import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class PhotoVerificationController extends GetxController {
  var selectedImagePath = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickFile = await ImagePicker().pickImage(source: imageSource);
    if (pickFile != null) {
      selectedImagePath.value = pickFile.path;
    } else {
      Get.snackbar('Error', 'No Image Captured',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.amber,
          colorText: Colors.white);
    }
  }
}
