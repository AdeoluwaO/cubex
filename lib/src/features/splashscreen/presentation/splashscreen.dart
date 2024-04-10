import 'package:flutter/material.dart';
import 'package:cubex/src/core/routers/route_exports.dart';
import 'package:cubex/src/core/utils/app_colors.dart';
import 'package:cubex/src/general_widgets/index.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(body: CustomListView(children: []));
  }
}
