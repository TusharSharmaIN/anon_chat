import 'package:firebase_core/firebase_core.dart';
import 'package:rumour/config.dart';
import 'package:rumour/firebase_options_prod.dart' as prod;
import 'package:rumour/firebase_options_dev.dart' as dev;
import 'package:rumour/locator.dart';

Future<void> initializeFirebaseApp() async {
  // Determine which Firebase options to use based on the flavor
  final flavor = locator<Config>().appFlavor;
  final firebaseOptions = switch (flavor) {
    Flavor.prod => prod.DefaultFirebaseOptions.currentPlatform,
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
  };
  await Firebase.initializeApp(options: firebaseOptions);
}
