import 'package:cubex/src/features/authentication/domain/index.dart';
import 'package:cubex/src/features/authentication/notifiers/login_notifier/login_notifier.dart';
import 'package:cubex/src/general_widgets/custom_scaffold.dart';
import 'package:cubex/src/general_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {});
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Center(
        child: CustomText(text: 'PROFILE'),
      ),
    );
  }
}
