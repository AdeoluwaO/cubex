import 'package:cubex/src/core/services/store/local_store_config.dart';
import 'package:cubex/src/core/services/store/store_keys.dart';
import 'package:dio/dio.dart';
import 'package:cubex/src/general_widgets/toast.dart';

//TODO: USE TRY TO INTERCEPTORS FOR API CALLS WITH TOKEN
//TODO: WHEN A  USER WANTS TO DOWNLOAD CONTENT HOW WOULD API HANDLE IT
Future<T?> sendRequest<T>({
  required String method,
  required String endpoint,
  Map<String, dynamic>? data,
  Map<String, dynamic>? queryParams,
  Options? options,
  bool requiresAuth = true,
}) async {
  final methodToUppercase = method.toUpperCase();
  try {
    final baseApiSetup =
        Dio(BaseOptions(baseUrl: 'https://stacked.com.ng/api'));
    /*RUN A CHECK IF TOKEN IS NOT EMPTY 
    MEANING THE USER WOULD HAVE PROBABLY AUTHENTICATED
    if(token.isNotEmpty) headers: {"Authorization": "Bearer $testToken""}: null;
    */
    final token =
        await LocalStorage().getStoredString(key: StoreKeys.userToken);
    print('STORED TOKEN FROM API SET UP ${token}');
    final response = await baseApiSetup.request(
      endpoint,
      queryParameters: queryParams,
      options: options ??
          Options(
            method: methodToUppercase,
            headers: requiresAuth ? {"Authorization": "Bearer $token"} : null,
          ),
      data: data ?? {},
    );
    print('RESPONSE FROM API BASE ${response.data}');
    return response.data as T;
  } on DioException catch (e) {
    showToast(message: e.toString(), isError: true);
    // print('API ERROR IS THIS $e');
    // return e as T;
  }
}
