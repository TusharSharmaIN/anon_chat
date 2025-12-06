import 'package:anon_chat/app.dart';
import 'package:anon_chat/config.dart';

Future<void> main() async {
  await initialSetup(flavor: Flavor.dev);
  runAppWith();
}
