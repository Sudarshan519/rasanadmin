import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProductController extends GetxController {
var imagePath=''.obs;
var selectedImageSize=''.obs;
Future<void> getImage(ImageSource imageSource) async {
final pickedFile=await ImagePicker().getImage(source: imageSource);
if(pickedFile!=null)
{
  imagePath.value=pickedFile.path;
selectedImageSize.value=((File(imagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)+"Mb";
}
else{
  Get.snackbar('Error', 'No Image selected',snackPosition:SnackPosition.BOTTOM,backgroundColor: Colors.grey,colorText: Colors.white);
}
}


}