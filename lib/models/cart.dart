import 'package:waliima_app/controllers/product_controller.dart';
import 'package:waliima_app/models/product.dart';

class Cart{

  final Product? product;
  final int? id,numberOfItem;

  Cart({ this.id,this.product, this.numberOfItem});
}
final ProductController controller = ProductController();
List<Cart> demoCarts = [
  Cart(product: controller.products[0], numberOfItem: 2),
  Cart(product: controller.products[1], numberOfItem: 1),
  Cart(product: controller.products[2], numberOfItem: 1),
];