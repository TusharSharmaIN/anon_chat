import 'package:rumour/app.dart';
import 'package:rumour/config.dart';

Future<void> main() async {
  await initialSetup(flavor: Flavor.dev);
  runAppWith();
}
