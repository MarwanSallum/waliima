import 'package:waliima_app/models/product.dart';

class Cart{

  final Product product;
  final int id,numberOfItem;

  Cart({this.id,this.product, this.numberOfItem});
}

List<Cart> demoCarts = [
  Cart(product: demo[0], numberOfItem: 2),
  Cart(product: demo[1], numberOfItem: 1),
  Cart(product: demo[2], numberOfItem: 1),
];