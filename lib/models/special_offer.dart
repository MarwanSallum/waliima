import 'package:waliima_app/contracts/model.dart';

class SpecialOffer extends Model{
  int? id;
  String? title;
  String? image;
  String? price;

  SpecialOffer({
    this.id,
    this.title,
    this.image,
    this.price,
  });

  factory SpecialOffer.fromJson(Map<String,dynamic> json) => SpecialOffer(
    id: json["id"],
    title: json['title'],
    image: json['image'],
    price: json['price'],
  );

  Map<String, dynamic> toJson() => {
    'id' : id,
    'title' : title,
    'image' : image,
    'price' : price,
  };
}