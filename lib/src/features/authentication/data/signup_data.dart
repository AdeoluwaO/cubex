import 'package:cubex/src/features/authentication/domain/index.dart';

class SignupData extends SignupRepo {
  @override
  Future createAccount({required CreateAccountModel userData}) async {
    final signupResponse =
        await DomainAuthentication.createAccount(userData: userData);
    return signupResponse;
  }
}
