import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.onTap,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Text(
        text,
        style: style ?? const TextStyle(color: Colors.white),
        textAlign: textAlign,
      ),
    );
  }
}
