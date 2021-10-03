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
      print("image not selected/captured");
    }
  }
}
