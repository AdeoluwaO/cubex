import 'package:flutter/material.dart';
import 'package:cubex/src/core/utils/index.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.body, this.backgroundColor});
  final Widget body;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppColors.white,
      body: SafeArea(top: true, child: body),
    );
  }
}
