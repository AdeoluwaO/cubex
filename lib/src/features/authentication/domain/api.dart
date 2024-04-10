import 'package:cubex/src/core/services/network/api_setup.dart';
import 'package:cubex/src/features/authentication/domain/model.dart';

class DomainAuthentication {
  static createAccount({required CreateAccountModel userData}) async {
    try {
      final response = await sendRequest(
        method: 'post',
        endpoint: '/register',
        requiresAuth: false,
        data: userData.toJson(),
      );
      final modeledResponse =
          CreateAccountModel.fromJson(response as Map<String, dynamic>);
      print('CREATE ACCOUNT RESPONSE $response');
      return response;
    } catch (e) {}
  }

  static login({required LoginModel userData}) async {
    try {
      final response = await sendRequest(
        method: 'post',
        endpoint: '/login',
        requiresAuth: false,
        data: userData.toJson(),
      );
      final modeledResponse =
          LoginResponseModel.fromJson(response as Map<String, dynamic>);
      return modeledResponse;
    } catch (e) {}
  }
}
