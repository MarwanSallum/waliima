import 'dart:convert';

import 'package:waliima_app/contracts/api_service.dart';
import 'package:waliima_app/controllers/verification_controller.dart';
import 'package:waliima_app/models/product.dart';
import 'package:waliima_app/services/api_path.dart';
import 'package:http/http.dart' as http;

class ProductService implements ApiService {
  @override
  Future<List<Product>> getAll({int? page}) async {
    String? accessToken = await VerificationController.getAccessToken();
    Map<String, String> _header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + accessToken!,
    };
    String allProductsURL = page != null
        ? ApiPath.ALL_PRODUCTS_VIEW + '?page=$page'
        : ApiPath.ALL_PRODUCTS_VIEW;
    http.Response _response = await http.get(Uri.parse(allProductsURL),headers: _header);
    switch(_response.statusCode){
      case 200:
        List<Product> products = [];
        var data = jsonDecode(_response.body);
        for(var item in data['data']){
          products.add(Product.fromJson(item));
        }
        return products;
      default:
        throw Exception('لا يوجد بيانات');
    }
  }
}
