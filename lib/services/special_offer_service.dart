import 'dart:convert';

import 'package:waliima_app/contracts/api_service.dart';
import 'package:waliima_app/controllers/verification_controller.dart';
import 'package:waliima_app/models/special_offer.dart';
import 'package:waliima_app/services/api_path.dart';
import 'package:http/http.dart' as http;

class SpecialOfferService implements ApiService {
  @override
  Future<List<SpecialOffer>> getAll({int? page}) async {
    String? accessToken = await VerificationController.getAccessToken();
    Map<String, String> _header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + accessToken!,
    };
    String allSpecialOffer = page != null
        ? ApiPath.All_SPECIAL_OFFERS + '?page=$page'
        : ApiPath.All_SPECIAL_OFFERS;
    http.Response _response =
        await http.get(Uri.parse(allSpecialOffer), headers: _header);
    switch (_response.statusCode) {
      case 200:
        List<SpecialOffer> specialOffers = [];
        var data = jsonDecode(_response.body);
        for (var item in data['data']) {
          specialOffers.add(SpecialOffer.fromJson(item));
        }
        return specialOffers;
      default:
        throw Exception('لا يوجد بيانات');
    }
  }
}
