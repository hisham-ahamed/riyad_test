// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:get_storage/get_storage.dart';
//
// class OtpController extends GetxController {
//   final String apiUrl = 'YOUR_API_URL';
//   final GetStorage storage = GetStorage();
//
//   Future<void> sendOtp(String mobileNumber) async {
//     try {
//       final response = await http.post(
//         Uri.parse('$apiUrl/otp'),
//         body: {'mobile_number': mobileNumber},
//       );
//
//       if (response.statusCode == 200) {
//         // OTP sent successfully
//         // Handle the response or any further actions
//       } else {
//         // Handle error cases, such as invalid mobile number, etc.
//       }
//     } catch (error) {
//       // Handle network or other errors
//     }
//   }
//
//   Future<void> verifyOtp(String mobileNumber, String otp) async {
//     try {
//       final response = await http.post(
//         Uri.parse('$apiUrl/otp/verify'),
//         body: {'mobile_number': mobileNumber, 'otp': otp},
//       );
//
//       if (response.statusCode == 200) {
//         final authToken = response.body['access_token'];
//         final authController = AuthController.to;
//         authController.login(authToken);
//         Get.offAll(HomeScreen());
//       } else {
//         // Handle invalid OTP or other error cases
//       }
//     } catch (error) {
//       // Handle network or other errors
//     }
//   }
// }


//
// import 'package:dio/dio.dart';
// import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// import 'package:get_storage/get_storage.dart';
//
// import '../../AppConstants/ApiConstatnt.dart';
// import '../../Config/DioConfig.dart';
//
// class AuthRepostory {
//   Dio _dio = Dio(DioConfig.options);
//   Future<OtpSentEntity?> sendOtp(String mobileNumber) async {
//     try {
//       final response = await _dio.post(
//           ApiConstant.BASE_URL + "apiotp/sendotp", data: {
//         'mobile_number': mobileNumber
//       });
//       if (response.statusCode == 200) {
//         var data = response.data;
//         print(data.toString());
//         return JsonConvert.fromJsonAsT<OtpSentEntity>(data);
//       }
//     }
//     catch (e) {
//       print(e);
//     }
//   }
//
//   Future<VerifyOtpEntity?> verifyOtp(String mobileNumber) async {
//     try {
//       final response = await _dio.post(ApiConstant.BASE_URL +"apiotp/verifyotp",data: {
//         "otp":otpFieldController.text,
//         // "key":key,
//         'mobile_number': mobileNumber
//       });
//       if(response.statusCode==200){
//         final authToken = response.body['access_token'];
//         final authController = AuthController.to;
//         authController.login(authToken);
//         Get.offAll(HomeScreen());
//         var data=response.data;
//         print(data.toString());
//         return JsonConvert.fromJsonAsT<VerifyOtpEntity>(data);
//       } else {
//         // Handle invalid OTP or other error cases
//       }
//
//     }
//     catch (e) {
//       print(e);
//     }
//   }
//
// }
//
//
