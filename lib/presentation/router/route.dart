import 'package:flutter/widgets.dart';
import 'package:rumour/presentation/join_room/join_room_page.dart';
import 'package:rumour/presentation/room_acknowledge/room_acknowledge_page.dart';
import 'package:rumour/presentation/room/room_page.dart';
import 'package:go_router/go_router.dart';

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

final goRouter = GoRouter(
  initialLocation: AppRoutes.joinRoomPage,
  observers: [routeObserver],
  routes: [
    GoRoute(
      path: AppRoutes.joinRoomPage,
      builder: (context, state) => const JoinRoomPage(),
    ),
    GoRoute(
      path: AppRoutes.roomAcknowledge,
      builder: (context, state) => const RoomAcknowledgePage(),
    ),
    GoRoute(
      path: AppRoutes.room,
      builder: (context, state) => const RoomPage(),
    ),
  ],
);

class AppRoutes {
  static const String joinRoomPage = '/join_room';
  static const String roomAcknowledge = '/room_acknowledge';
  static const String room = '/room';
}
