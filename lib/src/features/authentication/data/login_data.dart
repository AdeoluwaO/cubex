import 'package:cubex/src/features/authentication/domain/index.dart';

class LoginData extends LoginRepo {
  @override
  Future<LoginResponseModel> login({required LoginModel userData}) async {
    final loginResponse = await DomainAuthentication.login(userData: userData);
    return loginResponse;
  }
}
