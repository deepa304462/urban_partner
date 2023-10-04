import '../data/network/base_api_services.dart';
import '../data/network/network_api_services.dart';
import '../res/components/app_url.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.registerUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> verifyOtpApi(String otpId, dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
          '${AppUrl.verifyOtp}/$otpId', data);
      return response;
    } catch (e) {
      throw e;
    }
  }


  Future<dynamic> logInApi(dynamic data) async {
    try {
      dynamic response =
      await _apiServices.getPostApiResponse(AppUrl.loginUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> allCityApi() async {
    try {
      dynamic response =
      await _apiServices.getGetApiResponse(AppUrl.allCity);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
