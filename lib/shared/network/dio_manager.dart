import 'dart:io';
import 'package:dio/dio.dart';
import 'package:task_mohamed_elarousi/data/app_exceptions.dart';
import 'package:task_mohamed_elarousi/utils/logger.dart';
import 'dio_interceptor.dart';

class DIOManger {
  ///GET Method
  Future<Response<T>?> get<T>({
    /*Dio? dio,*/
    required Uri uri,
    /*required String path,*/
    /*required Map<String, dynamic>? parameters,*/
  }) async {
    /*dio ??= mainDio;*/
    final dio = Dio(BaseOptions(baseUrl: uri.origin))..interceptors.add(DioInterceptor());
    try {
      final options = await getOptions();
      final response =
          await dio.get<T>(uri.path, queryParameters: uri.queryParameters, options: options);
      return response;
    } on SocketException {
      Logger.logError("InternetException: No internet connection");
      return null;
    } on RequestTimeOut {
      Logger.logError("Request Time out");
      return null;
    } catch (error) {
      return null;
    }
  }

  Future<Options> getOptions() async {
    return Options(
      validateStatus: (_) => true,
      contentType: "application/json",
      responseType: ResponseType.json,
      receiveTimeout: const Duration(seconds: 40),
      sendTimeout: const Duration(seconds: 40),
    );
  }

  factory DIOManger() => _instance;

  DIOManger._internal();

  /// Singleton Factory
  static final DIOManger _instance = DIOManger._internal();
}
