import 'package:rumour/domain/core/error/api_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/room/entities/room_info.dart';
import 'package:rumour/domain/room/repository/i_room_repository.dart';

part 'room_event.dart';
part 'room_state.dart';
part 'room_bloc.freezed.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final IRoomRepository roomRepository;

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
          (roomInfo) {
            emit(
              state.copyWith(
                isLoading: false,
                roomId: value,
                roomJoined: true,
                roomInfo: roomInfo,
                apiFailureOrSuccess: some(right(roomInfo)),
              ),
            );
          },
        );
      },
    );
  }
}
