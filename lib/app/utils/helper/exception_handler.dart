import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../config/strings.dart';
import '../../data/models/response/error_response.dart';

class APIException implements Exception {
  final String message;

  APIException({required this.message});
}

class ExceptionHandler {
  ExceptionHandler._();

  static APIException handleError(Exception error) {
    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.sendTimeout:
          return APIException(message: ErrorMessages.connectionTimeout);
        case DioErrorType.connectTimeout:
          return APIException(message: ErrorMessages.connectionTimeout);
        case DioErrorType.response:
          return APIException(
              message: ErrorResponse.fromJson(error.response?.data).message);
        default:
          return APIException(message: ErrorMessages.networkGeneral);
      }
    } else {
      return APIException(message: ErrorMessages.networkGeneral);
    }
  }
}

class HandleError {
  HandleError._();

  static handleError(APIException? error) {
    Get.rawSnackbar(message: error?.message ?? ErrorMessages.networkGeneral);
  }
}
