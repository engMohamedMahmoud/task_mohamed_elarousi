import 'package:get/get.dart';
import '../../../data/response/status.dart';
import '../../../res/routes/routes_name.dart';
import '../model/user_model.dart';
import '../repository/users_repository.dart';

class UsersViewController extends GetxController{

  /// Pagination
  var isLoadingTest = false.obs;
  var isLoading = false.obs;
  var currentPage = 1.obs;
  var hasMore = true.obs;

  final rxRequestStatus = Status.LOADING.obs;
  RxString error = ''.obs;

  RxList<User> usersList = <User>[].obs;
  final userRepository = UsersRepository();

  var selectedUser = Rx<User?>(null);


  @override
  void onInit() {
    super.onInit();
    getUsersListApi();
  }
  void setRxRequestStatus(Status value) => rxRequestStatus.value = value;
  void setError(String value) => error.value = value;

  void getUsersListApi() {
    if (isLoading.value || !hasMore.value) return;
    isLoading.value = true;

    setRxRequestStatus(Status.LOADING);
    userRepository.getUsersListApi(currentPage.value).then((value){
        setRxRequestStatus(Status.COMPLETED);
        if (value.data.isNotEmpty) {
          List<User> newUsersData = value.data;
          usersList.addAll(newUsersData.where((item) =>
          !usersList.any((existingUser) => existingUser.id== item.id)));
          currentPage.value++;
        } else {
          hasMore.value = false; // No more items to fetch
        }
        isLoading.value = false;
      }).onError((error, stackTrace) {
        setError(error.toString());
        isLoading.value = false;
        setRxRequestStatus(Status.ERROR);
      });
  }

  void selectUserDetails(User user) {
    selectedUser.value = user;
    Get.toNamed(RouteName.userDetailsView)!.then((value) {});
  }
}