import 'package:get/get.dart';
import 'package:hoigg/constants/api_url.dart';
import 'package:hoigg/models/base_model.dart';

class LoginProvider extends GetConnect {
  @override
  void onInit() {
    print('init');
    // All request will pass to jsonEncode so CasesModel.fromJson()
    httpClient.defaultDecoder = (val) {
      BaseModel.fromJson(val);
    };
    httpClient.baseUrl = ApiUrl.baseURL;

    httpClient.maxAuthRetries = 3;
  }

  @override
  Future<Response> login(String path, String email, String password) =>
      post(ApiUrl.baseURL + path, {'email': email, 'password': password});
}
