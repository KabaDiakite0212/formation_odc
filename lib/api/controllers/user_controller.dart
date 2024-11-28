import 'package:formation_odc/api/services/user_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  RxBool isLoading = false.obs;
  RxString error = "".obs;
  RxList users = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  fetchUsers() async {
    isLoading(true);
    try {
      var userList = await UserService.fetchUsers();

      if (userList != null) {
        users.clear();
        users.assignAll(userList);
      } else {
        users.clear();
      }
    } catch (e) {
      error(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
