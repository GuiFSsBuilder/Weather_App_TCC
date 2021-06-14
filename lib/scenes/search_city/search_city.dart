import 'package:flutter/material.dart';
import 'package:weather_app_tcc/widgets/widgets.dart';

class SearchCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const greyColor = Color(0xff3C3C43);
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.transparent),
    );
    return SceneWrapper(
      showGoBack: true,
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextField(
            autofocus: true,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              fillColor: Colors.black.withOpacity(0.2),
              filled: true,
              contentPadding: EdgeInsets.zero,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              hintText: 'Procure uma cidade',
              hintStyle: const TextStyle(color: greyColor),
              prefixIcon: const Icon(
                Icons.search,
                color: greyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
