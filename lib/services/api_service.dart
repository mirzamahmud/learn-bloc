import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:learn_bloc/core/global/api/api_urls.dart';

class ApiService {
  late Dio dio;
  final String baseUrl = ApiUrls.apiBaseUrl;
  late Map<String, dynamic> header;
  late Connectivity connectivity;
  late String? token;
}