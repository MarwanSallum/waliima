import 'package:get/get.dart';
import 'package:waliima_app/models/product.dart';
import 'package:waliima_app/services/product_service.dart';

class ProductController extends GetxController with StateMixin{
  final ProductService productService = ProductService();
  RxList<Product> products = RxList<Product>();

  @override
  void onInit() {
    productService.getAll().then((value) {
      products.addAll(value);
      change(products , status: RxStatus.success());
    });
    super.onInit();
  }
}