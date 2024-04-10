import 'package:cubex/src/features/authentication/domain/index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cubex/src/core/utils/index.dart';
import 'package:cubex/src/features/authentication/data/login_data.dart';
import 'package:cubex/src/features/authentication/notifiers/login_notifier/login_state.dart';

class LoginNotifier extends StateNotifier<LoginNotifierState> {
  LoginNotifier() : super(LoginNotifierState.initialState());

  Future loginUser({required LoginModel data}) async {
    try {
      state = state.copyWith(loadState: LoadState.loading);
      final response = await LoginData().login(userData: data);
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

final loginNotifierProvider =
    StateNotifierProvider<LoginNotifier, LoginNotifierState>(
  (_) => LoginNotifier(),
);
