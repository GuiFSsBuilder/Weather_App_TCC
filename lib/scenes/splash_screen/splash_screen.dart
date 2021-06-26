import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:weather_app_tcc/widgets/widgets.dart';

import 'splash_screen_controller.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashScreenController controller = Get.find();

  @override
  void initState() {
    super.initState();
    controller.checkInitialPermissions();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SceneWrapper(
      scrollable: false,
      child: Center(
        child: Observer(
          builder: (_) {
            return controller.loading
                ? const Loader()
                : Text(
                    controller.errorMessage,
                    style: theme.textTheme.headline2,
                  );
          },
        ),
      ),
    );
  }
}
