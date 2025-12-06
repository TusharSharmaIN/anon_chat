import 'package:rumour/bloc/bloc/room_bloc.dart';
import 'package:rumour/config.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Core
  locator.registerLazySingleton(() => Config());

  // Room
  locator.registerLazySingleton(() => RoomBloc());
}
