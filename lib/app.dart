import 'package:anon_chat/bloc/bloc/room_bloc.dart';
import 'package:anon_chat/config.dart';
import 'package:anon_chat/locator.dart';
import 'package:anon_chat/presentation/router/route.dart';
import 'package:anon_chat/presentation/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  final config = locator<Config>();
  config.appFlavor = flavor;
}

void runAppWith() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider<RoomBloc>(create: (context) => locator<RoomBloc>()),
      ],
      child: MaterialApp.router(
        routerConfig: goRouter,
        theme: appThemeData,
        title: locator<Config>().appName,
        debugShowCheckedModeBanner: false,
        builder: (context, child) => GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: child,
        ),
      ),
    );
  }
}
