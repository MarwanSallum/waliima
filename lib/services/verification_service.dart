import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:waliima_app/models/verification_response.dart';
import 'package:waliima_app/services/api_path.dart';

class VerificationService{
  final Map<String,String> _header = {
    'accept' : 'application/json'
  };

  Future<VerificationResponse> verifyMobileNumber({required String? mobile, required String? otpCode})async{
    Map<String, String?> _body = {
      'mobile' : mobile,
      'otp' : otpCode,
    };
    http.Response _response = await http.post(Uri.parse(ApiPath.AUTHENTICATION), headers: _header, body: _body);
    switch(_response.statusCode){
      case 200:
      case 201:
        var data = jsonDecode(_response.body);
        return VerificationResponse(id: data['id'], accessToken: data['access_token']);
      default:
        throw Exception('الرمز المستخدم غير صحيح');
    }
  }
}