import 'package:cubex/src/features/authentication/domain/index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cubex/src/core/utils/index.dart';
import 'package:cubex/src/features/authentication/data/signup_data.dart';
import 'package:cubex/src/features/authentication/notifiers/signup_notifier/signup_state.dart';

class SignupNotifier extends StateNotifier<SignupNotifierState> {
  SignupNotifier() : super(SignupNotifierState.initialState());

  Future signupUser({required CreateAccountModel data}) async {
    try {
      state = state.copyWith(loadState: LoadState.loading);
      final response = await SignupData().createAccount(userData: data);
      state = state.copyWith(loadState: LoadState.success, data: response);
    } catch (e) {
      state = state.copyWith(loadState: LoadState.error, errorMessage: '$e');
    } finally {
      state = state.copyWith(
        loadState: LoadState.done,
      );
    }
  }
}

final signupNotifierProvider =
    StateNotifierProvider<SignupNotifier, SignupNotifierState>(
  (_) => SignupNotifier(),
);
