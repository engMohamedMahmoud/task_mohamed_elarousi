import 'package:task_mohamed_elarousi/shared/network/api_response.dart';
import 'package:task_mohamed_elarousi/shared/network/dio_manager.dart';
import 'base_api_services.dart';

class NetworkApiServicesUserAuthentication extends BaseApiServicesUserAuthentication {

  @override
  Future<T?> getUsersListApi<T>(String url) async =>
      (await DIOManger().get<T>(uri: Uri.parse(url)))?.data;

  @override
  Future<T?> getUserDetailsApi<T>(String url) async =>
      (await DIOManger().get<T>(uri: Uri.parse(url)))?.data;
}
