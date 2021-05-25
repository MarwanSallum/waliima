class LoginDTO{
  final String _email;
  final String _password;
  LoginDTO(this._email, this._password);

  String get email => _email;
  String get password => _password;

}