import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rasanadmin/src/models/product.dart';


class OrderModelModel {
  String id;
  String address;
  String city;
  int phone;
  String contact;
  String email;
  String status;
  Timestamp timeStamp;
  List<ProductModel> products;

  OrderModelModel(
      {this.id,
      this.products,
      this.phone,
      this.city,
      this.address,
      this.contact,
      this.email,
      this.status,
      this.timeStamp});
  // UserModel.fromDocumentSnapshot(DocumentSnapshot doc) {
  //   id = doc.id;
  //   name = doc["name"];
  //   email = doc["email"];
  //   city = doc["city"];
  //   phone = doc["phone"];
  //   street = doc["street"];
  //   zip = doc['zip'];
  // }

  OrderModelModel.fromJson(DocumentSnapshot element) {
    id = element.id;
    List<dynamic> prod = jsonDecode(element.data()['cart']);
    List<ProductModel> prodlist = [];
    prod.forEach((element) {
      prodlist.add(ProductModel.fromJson(element));
    });
    this.products = prodlist;
    this.email = element.data()['email'] ?? 'no value';
    this.address = element.data()['address']  ?? 'no value';
    this.city = element.data()['city']  ?? 'novalue';
    this.phone = element.data()['phone']?? 212313;
    this.status = element.data()['status']?? 'sent';
    this.timeStamp = element.data()['snapshot'] ?? Timestamp.now();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products'] = this.products;
    data['address'] = this.address;
    data['contact'] = this.email;
    data['city'] = this.city;
    data['phone'] = this.phone;
    data['timestamp'] = Timestamp.now();
    return data;
  }
}
