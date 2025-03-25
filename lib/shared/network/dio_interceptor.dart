import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:task_mohamed_elarousi/utils/logger.dart';
import 'package:task_mohamed_elarousi/utils/toast_utils.dart';
class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Logger.logInfo("========================= Request Start =========================");
    Logger.logInfo("Request Type/Method => ${options.method}");
    Logger.logInfo("URL => ${options.baseUrl + options.path}");
    Logger.logInfo("Parameters => ${options.queryParameters}");
    Logger.logInfo("Headers => ${options.headers}");
    Logger.logInfo("Body/Data => ${options.data}");
    Logger.logInfo("========================= Request END =========================");
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Logger.logSuccess("========================= Response Start =========================");
    Logger.logSuccess("Request Type => ${response.requestOptions.method}");
    Logger.logSuccess("Response of => ${response.realUri}");
    Logger.logSuccess("Status Code => ${response.statusCode}");
    Logger.logSuccess("Body/Data => ${response.data}");
    Logger.logSuccess("========================= Response END =========================");
    if (response.statusCode == 401) {
    } else {
      successfullyHandledUnAuthorized = false;
    }
    if(response.statusCode != 200 && response.statusCode != 201 && response.statusCode != 202 && !kReleaseMode){
      final message = response.data['Message'];
      final errorCode = response.data['ErrorCode'];
      if(message != null){
        ToastUtils.showToast("Message : $message");
      }
      if(errorCode != null){
        ToastUtils.showToast("Error Code : $errorCode");
      }
    }
    return super.onResponse(response, handler);
  }

  bool isHandlingReAuth = false;
  bool successfullyHandledUnAuthorized = false;



  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    Logger.logError("========================= Error Start =========================");
    Logger.logError("Error in Method => ${err.requestOptions.method} of URL => ${err.requestOptions.path}");
    Logger.logError("Error => ${err.error} and message => ${err.message}");
    Logger.logError("========================= Error END =========================");
    return super.onError(err, handler);
  }



  factory DioInterceptor() => _instance;

  DioInterceptor._internal();

  /// Singleton Factory
  static final DioInterceptor _instance = DioInterceptor._internal();

}
