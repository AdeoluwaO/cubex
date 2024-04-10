import 'package:cubex/src/core/services/network/api_setup.dart';
import 'package:cubex/src/features/authentication/domain/model.dart';

class DomainProfile {
  static getUserProfileDetails({required CreateAccountModel userData}) async {
    try {
      final response = await sendRequest(
        method: 'post',
        endpoint: '/profile',
        requiresAuth: true,
        data: userData.toJson(),
      );
      final modeledResponse =
          CreateAccountModel.fromJson(response as Map<String, dynamic>);
      print('CREATE ACCOUNT RESPONSE $response');
      return response;
    } catch (e) {}
  }
}
