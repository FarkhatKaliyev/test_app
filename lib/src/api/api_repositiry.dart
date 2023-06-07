import 'package:dio/dio.dart';

class ApiRepository {
  static const String url = 'https://jsonplaceholder.typicode.com/';
  static Dio dio = initializeDio();
}

initializeDio() {
  var dio = Dio();
  dio.options.baseUrl = ApiRepository.url;
  return dio;
}
