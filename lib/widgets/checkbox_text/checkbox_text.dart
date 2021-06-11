import 'package:flutter/material.dart';

class CheckboxText extends StatelessWidget {
  final bool value;
  final String text;
  final void Function(bool? value) onChanged;

  const CheckboxText({
    Key? key,
    required this.value,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 22,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            fillColor: MaterialStateProperty.resolveWith(
              (states) => Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(text)
      ],
    );
  }
}
