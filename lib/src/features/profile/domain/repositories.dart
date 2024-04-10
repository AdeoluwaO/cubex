import 'package:cubex/src/features/authentication/domain/index.dart';

abstract class SignupRepo {
  Future createAccount({required CreateAccountModel userData});
}

abstract class LoginRepo {
  Future<LoginResponseModel> login({required LoginModel userData});
}
