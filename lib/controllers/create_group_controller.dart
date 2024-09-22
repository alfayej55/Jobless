

import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreateGroupController extends GetxController{


  File? selectedIMage;
  var imagePath=''.obs;

  Future pickImageFromCamera(ImageSource source) async {
    final returnImage = await ImagePicker().pickImage(source: source);
    if (returnImage == null) return;
    selectedIMage = File(returnImage.path);
    imagePath.value=selectedIMage!.path;
    //  image = File(returnImage.path).readAsBytesSync();
    update();
    print('ImagesPath:${imagePath}');
    Get.back(); //
  }
}