import 'package:cubex/src/features/authentication/domain/index.dart';
import 'package:cubex/src/features/authentication/notifiers/signup_notifier/signup_notifier.dart';
import 'package:cubex/src/general_widgets/custom_scaffold.dart';
import 'package:cubex/src/general_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(signupNotifierProvider.notifier).signupUser(
              data: const CreateAccountModel(
            username: 'ade',
            email: 'lorem@mail.com',
            phone: '09088009900',
            address: 'string',
            image: 'string',
            password: 'password',
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Center(
        child: CustomText(text: 'SIGN UP'),
      ),
    );
  }
}
