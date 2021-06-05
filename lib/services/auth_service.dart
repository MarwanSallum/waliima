import 'package:http/http.dart' as http;
import 'package:waliima_app/services/api_path.dart';
class AuthService{
  final Map<String,String> _header = {
    'accept' : 'application/json'
  };

  Future<void> sendOTP(String? mobile) async{
    Map<String, String?> _body = {
      'mobile' : mobile,
    };
    http.Response _response = await http.post(Uri.parse(ApiPath.SEND_OTP_VERIFICATION), headers: _header, body: _body );
    switch(_response.statusCode){
      case 200:
      case 201:
        return null;
        break;
      default:
        throw Exception('لم يتم إرسال الرمز - يوجد خطأ ما');
    }
  }
}