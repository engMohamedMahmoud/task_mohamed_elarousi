import '../../../data/network/general_apis/network_api_services.dart';
import '../../../shared/network/app_url.dart';
import '../model/user_model.dart';

class UsersRepository {
  final _apiService = NetworkApiServicesUserAuthentication();

  Future<UsersModel> getUsersListApi(int pageIndex) async {
    dynamic response = await _apiService.getUsersListApi('${AppUrl.baseUrl}/users?page=$pageIndex');
    return UsersModel.fromJson(response);
  }

  Future<dynamic> getUserDetailsApi(String userId) async{
    dynamic response = await _apiService.getUserDetailsApi('${AppUrl.baseUrl}/users/$userId');
    return response ;
  }
}