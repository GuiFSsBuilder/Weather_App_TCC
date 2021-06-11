import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:weather_app_tcc/assets/svgs/svgs.dart';
import 'package:weather_app_tcc/widgets/widgets.dart';

import 'signup_controller.dart';

class Signup extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return SceneWrapper(
      showLogo: false,
      showGoBack: true,
      child: Column(
        children: [
          const Logo(height: 70),
          const SizedBox(height: 50),
          const TextField(decoration: InputDecoration(labelText: 'Nome')),
          const SizedBox(height: 15),
          const TextField(decoration: InputDecoration(labelText: 'Email')),
          const SizedBox(height: 15),
          const TextField(decoration: InputDecoration(labelText: 'Senha')),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Cadastrar'),
          ),
          const SizedBox(height: 30),
          const Text('Ou logar com'),
          const SizedBox(height: 10),
          SignInButton(
            Buttons.Google,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
