import 'package:cubex/src/core/utils/index.dart';
import 'package:cubex/src/features/authentication/domain/index.dart';

class LoginNotifierState {
  final LoadState? loadState;
  final String errorMessage;
  final LoginResponseModel? data;
  LoginNotifierState({
    required this.loadState,
    this.errorMessage = '',
    this.data,
  });

  factory LoginNotifierState.initialState() {
    return LoginNotifierState(
      loadState: LoadState.done,
      errorMessage: '',
      data: null,
    );
  }
  LoginNotifierState copyWith({
    LoadState? loadState,
    String? errorMessage,
    LoginResponseModel? data,
  }) {
    return LoginNotifierState(
      loadState: loadState ?? this.loadState,
      errorMessage: errorMessage ?? this.errorMessage,
      data: data ?? this.data,
    );
  }
}
