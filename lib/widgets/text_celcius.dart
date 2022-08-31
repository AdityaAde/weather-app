import 'package:flutter/material.dart';

class CelciusText extends StatelessWidget {
  const CelciusText({
    Key? key,
    required this.text,
    required this.sizeCelcius,
    this.style,
  }) : super(key: key);

  final String text;
  final double sizeCelcius;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          (text.length < 2) ? text : text.substring(0, 2),
          style: style,
        ),
        const SizedBox(width: 3),
        Text(
          '\u2103',
          style: TextStyle(fontSize: sizeCelcius),
        ),
      ],
    );
  }
}
