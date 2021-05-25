import 'package:shared_preferences/shared_preferences.dart';
import 'package:waliima_app/admin/core/model/auth_response.dart';
import 'package:waliima_app/admin/service/auth/auth_api.dart';
import 'package:waliima_app/admin/service/auth/login_dto.dart';

class AuthController{
  final AuthenticationApi _authenticationApi;
  AuthController(this._authenticationApi);

  Future<AuthResponse> login(LoginDTO loginDTO) async{
    await logout();
    AuthResponse _authResponse = await this._authenticationApi.login(loginDTO);
    await this._saveAuthResponse(_authResponse);
    return _authResponse;
  }

  Future<void>_saveAuthResponse(AuthResponse authResponse) async{
    SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    _sharedPref.setString('access_token', authResponse.access_token);
    _sharedPref.setInt('user_id', authResponse.id);
  }

  static Future<void> logout() async{
    SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    _sharedPref.remove('access_token');
    _sharedPref.remove('user_id');
  }

  static  Future<String> getAccessToken() async{
    SharedPreferences _sharedPref = await SharedPreferences.getInstance();
    return _sharedPref.getString('access_token');
  }
}