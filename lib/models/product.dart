import 'package:waliima_app/contracts/model.dart';

class Product extends Model {
  Product({
    this.id,
    this.title,
    this.description,
    this.price,
    this.weight,
    this.inStock,
    this.image,
  });

  int? id;
  String? title;
  String? description;
  int? price;
  int? weight;
  int? inStock;
  String? image;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    description: json["description"] == null ? null : json["description"],
    price: json["price"],
    weight: json["weight"],
    inStock: json["inStock"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description == null ? null : description,
    "price": price,
    "weight": weight,
    "inStock": inStock,
    "image": image,
  };
}


