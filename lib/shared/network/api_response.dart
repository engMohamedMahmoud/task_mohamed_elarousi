import 'package:dio/dio.dart';
import 'package:task_mohamed_elarousi/utils/logger.dart';

class ApiResponse<T> {
  final bool success, authorized;
  final String? message, errorCode;
  final T? data;

  static String tag = 'API Result Model';

  ApiResponse({
    required this.success,
    this.authorized = true,
    this.message,
    this.errorCode,
    this.data,
  });

  factory ApiResponse.fromResponse(Response? response) {
    if (response != null) {
      try {
        final Map<String, dynamic> responseBody = (response.data as Map<String, dynamic>);
        final res = ApiResponse<T>(
          success: response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 202,
          authorized: response.statusCode != 401,
          message: responseBody['message'],
          errorCode: responseBody['errorCode']??responseBody['ErrorCode'],
          data: responseBody['data'],
        );
        if(!res.authorized){
          //TODO: handle logout
        }
        return res;
      } catch (error) {
        Logger.log('Error in getting result from response:\n $error', tag: tag);
        return ApiResponse(
          success: false,
          data: null,
          message: "cannot init result api",
        );
      }
    } else {
      Logger.log('Response is null', tag: tag);
      return ApiResponse(
        success: false,
        data: null,
        message: "Response is null",
      );
    }
  }

}