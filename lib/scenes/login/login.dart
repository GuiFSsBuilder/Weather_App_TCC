import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class Login extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) {
          return Text('Name: ${controller.name}');
        }),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: controller.login,
          )
        ],
      ),
      body: Center(
        child: TextField(
          onChanged: (value) => controller.name = value,
        ),
      ),
    );
  }
}
