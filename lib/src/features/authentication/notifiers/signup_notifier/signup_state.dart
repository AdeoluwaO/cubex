import 'package:cubex/src/core/utils/index.dart';
import 'package:cubex/src/features/authentication/domain/index.dart';

class SignupNotifierState {
  final LoadState? loadState;
  final String errorMessage;
  final dynamic data;
  SignupNotifierState({
    required this.loadState,
    this.errorMessage = '',
    this.data,
  });

  factory SignupNotifierState.initialState() {
    return SignupNotifierState(
      loadState: LoadState.done,
      errorMessage: '',
      data: null,
    );
  }
  SignupNotifierState copyWith({
    LoadState? loadState,
    String? errorMessage,
    dynamic data,
  }) {
    return SignupNotifierState(
      loadState: loadState ?? this.loadState,
      errorMessage: errorMessage ?? this.errorMessage,
      data: data ?? this.data,
    );
  }
}
