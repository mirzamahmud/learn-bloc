import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart' as d;
import 'package:learn_bloc/core/constants/api_constants.dart';

class ApiService {
  late d.Dio dio;
  final String baseUrl = ApiConstants.baseUrl;
  late Map<String, dynamic> header;
  late Connectivity connectivity;
  late String? token;

  ApiService({int? connectTimeout, int? receiveTimeout}) {
    dio = d.Dio();
    dio.options.connectTimeout =
        Duration(milliseconds: connectTimeout ?? 60000); //1000 = 1s
    dio.options.receiveTimeout =
        Duration(milliseconds: receiveTimeout ?? 60000);

    connectivity = Connectivity();
    header = {
      'Accept': '*/*',
      'Authorization': 'Bearer $token',
    };
  }
}
