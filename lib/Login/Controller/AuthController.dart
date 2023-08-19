import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  final String authTokenKey = 'authToken';
  final GetStorage storage = GetStorage();

  static AuthController get to => Get.find<AuthController>();

  AuthController() {
    Get.put<AuthController>(this);
  }

  void login(String token) {
    storage.write(authTokenKey, token);
  }

  String? get authToken => storage.read(authTokenKey);

  void logout() {
    storage.remove(authTokenKey);
  }
}
