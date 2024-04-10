import 'package:flutter/material.dart';
import 'package:cubex/src/core/utils/index.dart';
import 'package:flutter/services.dart' show HapticFeedback;

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.iconName,
    this.color,
    this.size,
    this.onTap,
  });
  final IconData iconName;
  final Color? color;
  final double? size;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.vibrate();
        onTap!() ?? () {};
      },
      child: Icon(
        iconName,
        size: size ?? 30,
        color: color ?? AppColors.white,
      ),
    );
  }
}
