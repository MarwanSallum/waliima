import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:waliima_app/admin/core/model/auth_response.dart';
import 'package:waliima_app/admin/service/api/api_path.dart';
import 'package:waliima_app/admin/service/auth/login_dto.dart';

class AuthenticationApi{

  final Map<String,String> _header = {
    'accept' : 'application/json'
  };

  Future<AuthResponse> login(LoginDTO loginDTO) async{
    Map<String, String> _body = {
      'email' : loginDTO.email,
      'password' : loginDTO.password,
    };
    http.Response _response = await http.post(ApiPath.ADMIN_LOGIN, headers: _header, body: _body );
    switch(_response.statusCode){
      case 200:
      case 201:
        var data = jsonDecode(_response.body);
        return AuthResponse(data['id'], data['access_token']);
        break;
      default:
        throw Exception('فشل في تسجيل الدخول');
    }
  }
}