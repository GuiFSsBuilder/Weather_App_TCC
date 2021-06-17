import 'package:flutter/material.dart';

class CheckboxText extends StatelessWidget {
  final bool checked;
  final String text;
  final void Function(bool? value) onChanged;

  const CheckboxText({
    Key? key,
    required this.checked,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final checkIcon = checked ? Icons.check_box : Icons.check_box_outline_blank;
    return TextButton(
      onPressed: () => onChanged(!checked),
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith(
          (states) => const EdgeInsets.symmetric(horizontal: 3),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 22,
            child: Icon(checkIcon),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}
