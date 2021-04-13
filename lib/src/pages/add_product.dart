
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rasanadmin/src/controller/product_controller.dart';
import 'package:rasanadmin/src/models/product.dart';
import 'package:rasanadmin/src/widgets/custom_textfield.dart';

class ProductUpload extends GetView {
  final productController =Get.put(ProductController());
  final bool isUpdate;
  final TextEditingController password = TextEditingController();
  final name = TextEditingController();
  final email = TextEditingController();
  final street = TextEditingController();
  final phone = TextEditingController();
  final zip = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final latitude = TextEditingController();
  final longitude = TextEditingController();
  final service = TextEditingController();
  final city = TextEditingController();
  final picker=ImagePicker();
  ProductUpload({this.isUpdate = false});

  @override
  Widget build(BuildContext context) {
    // name.text = productController.user.value.name;
    // email.text = productController.user.value.email;
    // street.text = productController.user.value.street;
    // phone.text = productController.user.value.phone;
    // zip.text = productController.user.value.zip;
    // latitude.text = productController.user.value.latitude.toString();
    // longitude.text = productController.user.value.longitude.toString();
    // service.text = productController.user.value.service;
    // city.text = productController.user.value.city;
    return Scaffold(
      appBar: AppBar(
        title: isUpdate ? Text('Update Product') : Text('Upload Product'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                // Text(
                //   'Complete Profile',
                //   style: TextStyle(fontWeight: FontWeight.bold),
                // ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: name,
                  inputBorder: OutlineInputBorder(),
                  hintText: 'Name',
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(textAlignVertical: TextAlignVertical.top,
                  maxLines: 5,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'Enter your details here',
                  labelText: 'Description',labelStyle: TextStyle() ),
                ),
                // CustomTextField(
                //   controller: email,
                //   inputBorder: OutlineInputBorder(),
                //   hintText: 'Description',
                // ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: street,
                        inputBorder: OutlineInputBorder(),
                        hintText: 'Price',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: phone,
                        inputBorder: OutlineInputBorder(),
                        hintText: 'Discount',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: zip,
                  inputBorder: OutlineInputBorder(),
                  hintText: 'Quantity',
                ),
                SizedBox(
                  height: 20,
                ),
               Obx(()=>productController.imagePath.value==''? Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [ Text('Choose image'),
                TextButton(onPressed: () { 
                  productController.getImage(ImageSource.gallery);
                 },
                child: Text("Browse"),),],):Text('')),

                Obx(()=>productController.imagePath.value!=''?Column(children: [Image.file(File(productController.imagePath.value)),
                Text(productController.selectedImageSize.value)],):Text('No Image Selected'))
                // Row(
                //   children: [
                //     Expanded(
                //       child: CustomTextField(
                //         controller: latitude,
                //         inputBorder: OutlineInputBorder(),
                //         hintText: 'latitude',
                //       ),
                //     ),
                //     SizedBox(
                //       width: 10,
                //     ),
                //     Expanded(
                //       child: CustomTextField(
                //         controller: longitude,
                //         inputBorder: OutlineInputBorder(),
                //         hintText: 'Longitude',
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // CustomTextField(
                //   controller: service,
                //   inputBorder: OutlineInputBorder(),
                //   hintText: 'Service',
                // ),
                // SizedBox(height: 20),
                // CustomTextField(
                //   controller: city,
                //   inputBorder: OutlineInputBorder(),
                //   hintText: 'City',
               , // ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
             //       if (_formKey.currentState.validate()) {
                      ProductModel user = ProductModel(
                          name: name.text,
                          
                          // phone: phone.text,
                          // email: email.text,
                          // street: street.text,
                          // zip: zip.text,
                          // latitude: double.parse(latitude.text),
                          // longitude: double.parse(longitude.text),
                          // service: service.text,
                          // city: city.text
                          );
                          productController.imagePath.value='';
                          productController.selectedImageSize.value='';
                  //    productController.updateUser(user);
                  //  }
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: double.infinity,
                      child: Text('Continue')),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.red.shade800,
                      primary: Theme.of(context).scaffoldBackgroundColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}