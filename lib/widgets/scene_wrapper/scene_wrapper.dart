import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:weather_app_tcc/assets/svgs/svgs.dart';

class SceneWrapper extends StatelessWidget {
  final Widget? child;
  final bool showGoBack;
  final bool showLogo;
  final bool showSettingsIcon;
  final bool scrollable;

  const SceneWrapper({
    this.child,
    this.showGoBack = false,
    this.showLogo = true,
    this.showSettingsIcon = false,
    this.scrollable = true,
  });

  void onPressedSettings() {}

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [];
    if (showSettingsIcon) {
      actions = [
        IconButton(
          onPressed: onPressedSettings,
          icon: const Icon(Entypo.dots_three_horizontal),
        ),
        const SizedBox(width: 20),
      ];
    }
    return Scaffold(
      appBar: AppBar(
        title: showLogo ? const Logo() : null,
        centerTitle: true,
        leading: showGoBack
            ? IconButton(
                onPressed: Get.back,
                icon: const Icon(AntDesign.arrowleft),
              )
            : null,
        actions: actions,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.pink,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff62C4FB),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: scrollable ? SingleChildScrollView(child: child) : child,
          ),
        ),
      ),
    );
  }
}
