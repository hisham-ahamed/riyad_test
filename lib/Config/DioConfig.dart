import 'package:dio/dio.dart';

import '../AppConstants/ApiConstatnt.dart';

class DioConfig {
  // Dio _dio=new Dio();

  static BaseOptions options = BaseOptions(
    baseUrl: ApiConstant.BASE_URL,
    receiveDataWhenStatusError: true,
    connectTimeout: const Duration(seconds: 60), // 60 seconds
    receiveTimeout: const Duration(seconds: 60), // 60 seconds
  );
}
