import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:shopoth/models/profile_info.dart';

class AccountInformationController extends GetxController {
  var accountInfoTapped = false.obs;
  var profile = <ProfileInfo>[].obs;
  var isMyAddressClicked = false.obs;
  var isMyOutletClicked = false.obs;

  void editStatus() {
    accountInfoTapped.toggle();
  }

  void addressBarStatus() {
    isMyAddressClicked.toggle();
  }

  void outletBarStatus() {
    isMyOutletClicked.toggle();
  }

  @override
  void onInit() {
    super.onInit();
    fetchProfiles();
    print(accountInfoTapped);
  }

  void fetchProfiles() {
    // await Future.delayed(Duration(seconds: 1));

    var profileResult = [
      ProfileInfo(id: 1, name: "ABCD", joinedDate: "Member Since 2020"),
      // ProfileInfo(id: 2, name: "EFGH", joinedDate: "Member Since 2020"),
      // ProfileInfo(id: 3, name: "IJKL", joinedDate: "Member Since 2020"),
      // ProfileInfo(id: 4, name: "LMNO", joinedDate: "Member Since 2020"),
    ];

    profile.value = profileResult;
  }
}
