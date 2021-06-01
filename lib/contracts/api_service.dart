import 'package:waliima_app/contracts/model.dart';

abstract class ApiService{
 Future<List<Model>> getAll();
}