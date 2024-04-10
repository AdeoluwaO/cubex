import 'package:cubex/src/core/services/store/local_store_config.dart';
import 'package:cubex/src/core/services/store/store_keys.dart';
import 'package:cubex/src/core/utils/index.dart';
import 'package:cubex/src/features/authentication/domain/index.dart';
import 'package:cubex/src/features/authentication/notifiers/login_notifier/login_notifier.dart';
import 'package:cubex/src/general_widgets/custom_button.dart';
import 'package:cubex/src/general_widgets/custom_scaffold.dart';
import 'package:cubex/src/general_widgets/custom_text.dart';
import 'package:cubex/src/general_widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(loginNotifierProvider.notifier).loginUser(
          data: const LoginModel(username: 'lorem', password: 'password'));
    });
  }

  @override
  Widget build(BuildContext context) {
    final response = ref.watch(loginNotifierProvider);
    print('RESPONSE FROM BUILD METHOD ${response.data?.token}');
    Future.delayed(const Duration(seconds: 1), () async {
      await LocalStorage()
          .storeString(key: StoreKeys.userToken, val: response.data?.token);
    });
    return CustomScaffold(
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          const Spacing.largeHeight(),
          ImageView(
            svgPath: AppImagesPath.appLogo,
            alignment: Alignment.center,
            height: 80,
          ),
          // const Spacing.largeHeight(),
          const Spacer(),
          CustomButton(
            title: 'Login',
            isborderButton: true,
            onTap: () {
              print('TETTTST');
              showCustomBottomSheet(
                  context: context,
                  title: 'Welcome back ',
                  contents: [
                    CustomText(text: 'TTETETTE'),
                    CustomTexrField(),
                  ]);
            },
          ),
          const Spacing.largeHeight(),
          CustomButton(
            title: 'Sign up',
            onTap: () {
              showCustomBottomSheet(
                  context: context, title: 'Create Account', contents: []);
            },
          ),
          const Spacing.largeHeight(),
        ],
      ),
    );
  }
}
