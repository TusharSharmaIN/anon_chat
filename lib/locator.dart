import 'package:get_it/get_it.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:rumour/bloc/bloc/room_bloc.dart';
import 'package:rumour/config.dart';
import 'package:rumour/domain/room/repository/i_room_repository.dart';
import 'package:rumour/infrastructure/core/secure_storage.dart';
import 'package:rumour/infrastructure/room/datasource/room_local.dart';
import 'package:rumour/infrastructure/room/datasource/room_remote.dart';
import 'package:rumour/infrastructure/room/repository/room_repository.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => SecureStorage());

  locator.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  locator.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );

  locator.registerLazySingleton(
    () => RoomLocalDataSource(secureStorage: locator<SecureStorage>()),
  );

  locator.registerLazySingleton(
    () => RoomRemoteDataSource(firestore: locator<FirebaseFirestore>()),
  );

  locator.registerLazySingleton<IRoomRepository>(
    () => RoomRepository(
      remote: locator<RoomRemoteDataSource>(),
      local: locator<RoomLocalDataSource>(),
      firebaseAuth: locator<FirebaseAuth>(),
    ),
  );

  locator.registerFactory(
    () => RoomBloc(roomRepository: locator<IRoomRepository>()),
  );
}
