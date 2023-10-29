//! put it in utilis to be usable
import 'package:dio/dio.dart';

class ApiService
{
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String,dynamic>> get({required String url})
  async{

    var response = await dio.get('$_baseUrl$url'); //? get data
    return response.data; //? return data as map

  }
}