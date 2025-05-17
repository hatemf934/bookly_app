import 'package:dio/dio.dart';

class ApiClass {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio = Dio();
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$baseUrl$endpoint');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(response.statusCode);
    }
  }
}
