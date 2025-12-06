import 'dart:async';

import 'package:rumour/domain/core/error/api_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/core/value/value_objects.dart';
import 'package:rumour/domain/room/entities/chat_message.dart';
import 'package:rumour/domain/room/entities/room_info.dart';
import 'package:rumour/domain/room/entities/room_member.dart';
import 'package:rumour/domain/room/repository/i_room_repository.dart';

part 'room_event.dart';
part 'room_state.dart';
part 'room_bloc.freezed.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final IRoomRepository roomRepository;
  StreamSubscription<Either<ApiFailure, List<ChatMessage>>>? messagesSub;

  RoomBloc({required this.roomRepository}) : super(RoomState.initial()) {
    on<RoomEvent>(_onEvent);
  }

  Future<void> _onEvent(RoomEvent event, Emitter<RoomState> emit) async {
    await event.map(
      init: (_) async {
        emit(RoomState.initial());
      },
      onRoomIdEntered: (e) async {
        final value = e.value.trim();
        final isValid = RegExp(r'^\d{6}$').hasMatch(value);

        if (!isValid) {
          emit(
            state.copyWith(
              apiFailureOrSuccess: some(
                left(const ApiFailure.other('Invalid Room ID')),
              ),
            ),
          );
          return;
        }
        emit(state.copyWith(isLoading: true, apiFailureOrSuccess: none()));
        final failureOrSuccess = await roomRepository.joinRoom(value);

        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccess: some(left(failure)),
              ),
            );
          },
          (result) {
            final roomInfo = result.$1;
            final identity = result.$2;
            emit(
              state.copyWith(
                isLoading: false,
                roomId: value,
                roomJoined: true,
                roomInfo: roomInfo,
                currentIdentity: identity,
                apiFailureOrSuccess: some(right(roomInfo)),
              ),
            );
          },
        );
      },
      watchMessagesStarted: (_) async {
        if (state.roomId.isEmpty) return;
        await messagesSub?.cancel();
        messagesSub = roomRepository.watchMessages(state.roomId).listen((
          failureOrMessages,
        ) {
          add(RoomEvent.messagesReceived(failureOrMessages: failureOrMessages));
        });
      },
      messagesReceived: (e) async {
        e.failureOrMessages.fold(
          (failure) {
            emit(state.copyWith(apiFailureOrSuccess: some(left(failure))));
          },
          (messages) {
            emit(
              state.copyWith(messages: messages, apiFailureOrSuccess: none()),
            );
          },
        );
      },
      sendMessagePressed: (e) async {
        final raw = e.text.trim();
        if (raw.isEmpty) return;
        if (state.roomId.isEmpty) return;

        final identity = state.currentIdentity;
        if (!identity.uid.isNotEmpty || !identity.name.isNotEmpty) return;

        final message = ChatMessage(
          messageId: StringValue(
            DateTime.now().microsecondsSinceEpoch.toString(),
          ),
          text: StringValue(raw),
          senderUid: identity.uid,
          senderName: identity.name,
          createdAt: DateTimeValue(DateTime.now().toIso8601String()),
          // isMe: true,
        );

        emit(state.copyWith(apiFailureOrSuccess: none()));

        final result = await roomRepository.sendMessage(
          roomId: state.roomId,
          message: message,
        );

        result.fold(
          (failure) {
            emit(state.copyWith(apiFailureOrSuccess: some(left(failure))));
          },
          (_) {
            emit(state.copyWith(apiFailureOrSuccess: some(right(unit))));
          },
        );
      },
    );
  }

  @override
  Future<void> close() {
    messagesSub?.cancel();
    return super.close();
  }
}
