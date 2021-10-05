import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class MyAccountController extends GetxController {
  var expanded = false.obs;

  @override
  void onInit() {
    super.onInit();
    // fetchProfiles();
    //profileExpandedStatus();
  }

  void profileExpandedStatus() {
    expanded.toggle();
  }

  // void fetchProfiles() async {
  //   await Future.delayed(Duration(seconds: 1));

  //   var profileResult = [
  //     ProfileInfo(id: 1, name: "ABCD", joinedDate: "Member Since 2020"),
  //     // ProfileInfo(id: 2, name: "EFGH", joinedDate: "Member Since 2020"),
  //     // ProfileInfo(id: 3, name: "IJKL", joinedDate: "Member Since 2020"),
  //     // ProfileInfo(id: 4, name: "LMNO", joinedDate: "Member Since 2020"),
  //   ];

  //   profile.value = profileResult;
  // }
}
