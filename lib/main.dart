import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_dotenv/flutter_dotenv.dart' as dot_env;

import 'app.dart';
import 'utils/helpers/helpers.dart';

Future<void> main() async {
  await dot_env.load(fileName: Env.getEnvFileName());
  runApp(App());
}
