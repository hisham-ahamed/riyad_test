import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riyad_test/AppConstants/url-list.dart';
import 'package:riyad_test/Login/Model/otp_validation_response.dart';
import 'package:riyad_test/Login/Model/phone-number-request-response.dart';

class ApiRequests {
  static GetStorage storage = GetStorage();
  static Future<PhoneNumberRequestResponse> postPhoneNumber(
      {required String phoneNumber}) async {
    final dio = Dio();
    FormData formData = FormData.fromMap({
      'mobile_number': phoneNumber,
    });
    final data = await dio.post(
      kSendOTPtoMobileNumberUrl,
      data: formData,
      options: Options(
        validateStatus: (_) => true,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );
    String encodedResponse = jsonEncode(data.data);
    Map<String, dynamic> response = jsonDecode(encodedResponse);
    return PhoneNumberRequestResponse.fromJson(response);
  }

  static Future<UserDetailsRequestResponse> postOTPValidation(
      {required String phoneNumber, required String otp}) async {
    final dio = Dio();
    FormData formData =
        FormData.fromMap({'otp': otp, 'mobile_number': phoneNumber});
    final data = await dio.post(
      kOTPValidationUrl,
      data: formData,
      options: Options(
        validateStatus: (_) => true,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );
    String encodedResponse = jsonEncode(data.data);
    Map<String, dynamic> response = jsonDecode(encodedResponse);
    print(response);
    return UserDetailsRequestResponse.fromJson(response);
  }

  static Future<UserDetailsRequestResponse> registerNewUser(
      {required UserDetails userDetails}) async {
    final dio = Dio();
    FormData formData = FormData.fromMap({
      'first_name': userDetails.firstName,
      'last_name': userDetails.lastName,
      'email': userDetails.email,
      'mobile_number': userDetails.mobileNumber,
      'image': userDetails.imageUrl
    });
    final data = await dio.post(
      kRegisterNewUserUrl,
      data: formData,
      options: Options(
        validateStatus: (_) => true,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );
    String encodedResponse = jsonEncode(data.data);
    Map<String, dynamic> response = jsonDecode(encodedResponse);
    return UserDetailsRequestResponse.fromJson(response);
  }

  static Future<Map<String, dynamic>> getSports() async {
    String token = storage.read('token');
    final dio = Dio();
    final data = await dio.post(
      kGetSportsUrl,
      options: Options(
        headers: {"Authorization": "Bearer $token"},
        validateStatus: (_) => true,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );
    String encodedResponse = jsonEncode(data.data);
    Map<String, dynamic> response = jsonDecode(encodedResponse);
    return response;
  }

  static Future<Map<String, dynamic>> getSportsMore() async {
    String token = storage.read('token');
    final dio = Dio();
    final data = await dio.post(
      kGetSportsMoreUrl,
      options: Options(
        headers: {"Authorization": "Bearer $token"},
        validateStatus: (_) => true,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );
    String encodedResponse = jsonEncode(data.data);
    Map<String, dynamic> response = jsonDecode(encodedResponse);
    return response;
  }
}
