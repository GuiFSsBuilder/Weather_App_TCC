// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_dotenv/flutter_dotenv.dart';

// ignore: avoid_classes_with_only_static_members
class Env {
  static String type = env['ENV'] ?? '';
  static String clientId = env['CLIENT_ID'] ?? '';
  static String apiBasePath = env['API_BASE_PATH'] ?? '';

  static String getEnvFileName() {
    const envArg = String.fromEnvironment("ENV");
    switch (envArg) {
      case 'HML':
        return '.env.hml';
      case 'PRD':
        return '.env.prd';
      default:
        return '.env.dev';
    }
  }
}
