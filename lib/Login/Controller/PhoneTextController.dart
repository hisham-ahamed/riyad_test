import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riyad_test/AppConstants/url-list.dart';
import 'package:riyad_test/Login/Model/otp_validation_response.dart';

class PhoneTextController extends GetxController {
  final storage = GetStorage();
  final mobileNumber = 0.obs;
  final errorMessage = ''.obs;
  final continueLoadingState = false.obs;
  final loginLoadingState = false.obs;
  final registerLoadingState = false.obs;
  final responseMessageOnPhoneNumberPostRequest = ''.obs;
  final otp = ''.obs;
  final token = ''.obs;

  saveToken(String tokenToSave) {
    storage.write('token', tokenToSave);
    token(tokenToSave);
  }

  String getToken() {
    return token.value == '' ? storage.read('token') : token.value;
  }

  setPhoneNumber(int phoneNumber) {
    mobileNumber(phoneNumber);
  }

  setContinueLoadingState(bool state) {
    continueLoadingState(state);
    update();
  }

  setLoginLoadingState(bool state) {
    loginLoadingState(state);
    update();
  }

  setRegisterLoadingState(bool state) {
    registerLoadingState(state);
    update();
  }

  setOtp(String otpString) {
    otp(otpString);
  }

  setResponseMessage(String message) {
    responseMessageOnPhoneNumberPostRequest(message);
  }

  String getErrorText() => errorMessage.value;

  setErrorText(String errorText) {
    errorMessage(errorText);
    update();
  }
}

class UserData extends GetxController {
  final userData = const UserDetailsRequestResponse(
          responseCode: 0, status: true, message: 'message')
      .obs;
  setUserDataResponse(UserDetailsRequestResponse otpValidationResponse) {
    userData(otpValidationResponse);
    update();
  }
}

enum HomeVisit { firstTime, notFirstTime }

class UserDetailsState extends GetxController {
  final userDetails = kUserDetails.obs;
  final homeVisit = HomeVisit.firstTime.obs;

  setHomePageVisit(HomeVisit visit) {
    homeVisit(visit);
  }

  setUserDetails(UserDetails details) {
    userDetails(details);
    update();
  }
}

class UserDataValue {
  static late String mobileNumber;
  static late UserDetails userData;
  static DateTime dateTime = DateTime.now();
}
