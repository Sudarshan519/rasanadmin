import 'package:get/get.dart';
import 'package:rasanadmin/src/models/product.dart';

class OrderController extends GetxController {
  var loading = false.obs;
  RxBool togglenotice = false.obs;
  Rx<List<ProductModel>> list;
}