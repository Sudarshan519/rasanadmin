import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rasanadmin/src/models/order.dart';
import 'package:rasanadmin/src/models/product.dart';
import 'package:rasanadmin/src/models/user.dart';

class Database{
  Future<UserModel> getUser(String uid){

  }
    final collection= FirebaseFirestore.instance.collection('orders')
      //.where(FirebaseAuth.instance.currentUser.uid)
      ;

    getOrders()async{
    List<OrderModelModel> order=[];
   var data= await collection.get();
   print(data.docs.length);
   data.docs.forEach((element) { 
     order.add(OrderModelModel.fromJson(element));
   });
    }
    Stream<List<ProductModel>> allNotification() {
    return collection.snapshots().map((QuerySnapshot query) {
      List<ProductModel> value = [];
      query.docs.forEach((element) {
        print(element.id);
        value.add(ProductModel.fromDocumentSnapshot(element));
      });
     // print(value.length);
      return value;
      // query.docs.forEach((element) {value.add(Notifications.);})
    });
  }
}