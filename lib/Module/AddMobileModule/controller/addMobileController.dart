import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddMobileController extends GetxController{

  var image = ''.obs;

  void getImage() async{
    final ImagePicker _picker = ImagePicker();
    final pickedImage = await _picker.pickImage(source: ImageSource.camera);
    if(pickedImage == null){
      image.value = pickedImage!.path;
    }else{
      Get.snackbar("Error", "No image selecteed",
      duration: Duration(seconds: 1),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}