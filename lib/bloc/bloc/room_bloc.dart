import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/core/error/api_failures.dart';
import 'package:rumour/domain/core/value/value_objects.dart';
import 'package:rumour/domain/room/entities/chat_message.dart';
import 'package:rumour/domain/room/entities/room_info.dart';
import 'package:rumour/domain/room/entities/room_member.dart';
import 'package:rumour/domain/room/repository/i_room_repository.dart';

part 'room_event.dart';
part 'room_state.dart';
part 'room_bloc.freezed.dart';

typedef MessagesTuple = (String, Either<ApiFailure, List<ChatMessage>>);

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final IRoomRepository roomRepository;
  StreamSubscription<MessagesTuple>? messagesSub;

  RoomBloc({required this.roomRepository}) : super(RoomState.initial()) {
    on<RoomEvent>(_onEvent);
  }

  Future<void> _onEvent(RoomEvent event, Emitter<RoomState> emit) async {
    await event.map(
      init: (_) async {
        await messagesSub?.cancel();
        messagesSub = null;
        emit(RoomState.initial());
      },
      onRoomIdEntered: (e) async {
        emit(state.copyWith(enteredRoomId: e.value));

        final value = e.value.trim();
        final valid = RegExp(r'^\d{6}$').hasMatch(value);

        if (!valid) {
          emit(
            state.copyWith(
              apiFailureOrSuccess: optionOf(
                left(const ApiFailure.other('Invalid Room ID')),
              ),
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            isLoading: true,
            roomJoined: false,
            apiFailureOrSuccess: none(),
          ),
        );

        final result = await roomRepository.joinRoom(value);

        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccess: optionOf(result),
              ),
            );
          },
          (joined) {
            final roomInfo = joined.$1;
            final identity = joined.$2;

            emit(
              state.copyWith(
                isLoading: false,
                roomJoined: true,
                roomId: value,
                roomInfo: roomInfo,
                currentIdentity: identity,
                messages: [],
                oldestMessage: ChatMessage.empty(),
                hasMore: true,
                isLoadingMore: false,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
      watchMessagesStarted: (_) async {
        final roomId = state.roomId;
        if (roomId.isEmpty) return;

        await messagesSub?.cancel();
        messagesSub = null;

        emit(
          state.copyWith(
            messages: [],
            oldestMessage: ChatMessage.empty(),
            hasMore: true,
          ),
        );

        messagesSub = roomRepository.watchMessages(roomId).listen((tuple) {
          final id = tuple.$1;
          final data = tuple.$2;

          add(RoomEvent.messagesReceived(roomId: id, failureOrMessages: data));
        });
      },
      messagesReceived: (e) async {
        if (e.roomId != state.roomId) return;

        e.failureOrMessages.fold(
          (failure) {
            emit(
              state.copyWith(
                apiFailureOrSuccess: optionOf(e.failureOrMessages),
              ),
            );
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

        final msg = ChatMessage(
          messageId: StringValue(
            DateTime.now().microsecondsSinceEpoch.toString(),
          ),
          text: StringValue(raw),
          senderUid: identity.uid,
          senderName: identity.name,
          createdAt: DateTimeValue(DateTime.now().toIso8601String()),
        );

        emit(state.copyWith(apiFailureOrSuccess: none()));

        final result = await roomRepository.sendMessage(
          roomId: state.roomId,
          message: msg,
        );

        result.fold(
          (failure) {
            emit(state.copyWith(apiFailureOrSuccess: optionOf(result)));
          },
          (_) {
            emit(state.copyWith(apiFailureOrSuccess: none()));
          },
        );
      },
      loadMoreMessages: (e) async {
        if (!state.hasMore ||
            state.isLoadingMore ||
            state.roomId.isEmpty ||
            state.messages.isEmpty) {
          return;
        }

        final roomId = state.roomId;
        final before = state.messages.first.createdAt.dateTime;

        emit(state.copyWith(isLoadingMore: true));

        final result = await roomRepository.fetchOlderMessages(
          roomId: roomId,
          before: before,
          limit: 20,
        );

        result.fold(
          (failure) {
            emit(state.copyWith(isLoadingMore: false));
          },
          (older) {
            final updated = [...older, ...state.messages];

            emit(
              state.copyWith(
                messages: updated,
                isLoadingMore: false,
                hasMore: older.length == 20,
                oldestMessage: updated.first,
              ),
            );
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
