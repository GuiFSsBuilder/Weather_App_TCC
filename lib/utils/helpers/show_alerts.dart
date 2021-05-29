import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_template_builders/utils/enums/enums.dart';

void showFlushbar({
  required String title,
  required String message,
  FlushbarType type = FlushbarType.info,
  Duration duration = const Duration(seconds: 3),
}) {
  final context = Get.context;
  if (context == null) return;

  var iconData = Icons.info_outline;
  var mainColor = Colors.blue[300];

  if (type == FlushbarType.success) {
    iconData = Icons.done;
    mainColor = Colors.green;
  } else if (type == FlushbarType.danger) {
    iconData = Icons.error_outline;
    mainColor = Colors.red[300];
  } else if (type == FlushbarType.warning) {
    iconData = Icons.warning_amber_rounded;
    mainColor = Colors.yellow;
  }

  final flushbar = Flushbar(
    duration: duration,
    titleText: Container(
      margin: const EdgeInsets.only(left: 15),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    messageText: Container(
      margin: const EdgeInsets.only(left: 15),
      child: Text(
        message,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
    icon: Icon(
      iconData,
      size: 30,
      color: mainColor,
    ),
    leftBarIndicatorColor: mainColor,
  );
  flushbar.show(context);
}
