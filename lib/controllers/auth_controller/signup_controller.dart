

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class SignupController extends GetxController{

  RxString selectedDate='Select Date Time'.obs;

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

  Future<void> selectDate(BuildContext context ) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1725),
        lastDate: DateTime(2050)
    );

    if (picked != null && picked != selectedDate) {
      selectedDate.value=DateFormat('dd/MM/yyyy').format(picked);
      print('dateTime:${selectedDate}');

      update();
    }
  }
}