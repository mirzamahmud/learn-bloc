import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:learn_bloc/core/constants/app_constant.dart';
import 'package:learn_bloc/core/helper/print_helper.dart';
import 'package:learn_bloc/data/model/global/api_response_model.dart';

class ApiService {
  late Dio dio;
  final String baseUrl = AppConstant.apiBaseUrl;
  late Map<String, dynamic> header;
  late Connectivity connectivity;
  late String? token;

  ApiService({int? connectionTimeOut, int? receiveTimeOut}){
    dio = Dio();
    dio.options.connectTimeout = Duration(milliseconds: connectionTimeOut ?? 60000); // 1000 ms = 1s
    dio.options.receiveTimeout = Duration(milliseconds: receiveTimeOut ?? 60000);
    connectivity = Connectivity();
    token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIsInVzZXIiOiJtb3JfMjMxNCIsImlhdCI6MTczNDQ2MDg2Mn0.YmeKCB2hXMBX_DMl6gTjoL85sJdhrBjNswhZ5YB3I70';
    header = {
      'Accept': '*/*',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
  }

  // =========== check internet connection ============
  Future<bool> isConnectedToInternet() async{
    final List<ConnectivityResult> connectivityResult = await connectivity.checkConnectivity();
    if(connectivityResult.contains(ConnectivityResult.mobile) || connectivityResult.contains(ConnectivityResult.wifi)){
      return true;
    } else{
      return false;
    }
  }

  // =========== for GET request ==============
  Future<ApiResponseModel> getRequest({required String apiEndPoint}) async{
    Response response;
    String requestUrl = '$baseUrl$apiEndPoint';

    PrintHelper.printStatement(message: 'Request Url -> $requestUrl');

    if(await isConnectedToInternet()){
      // ========== connected to internet
      try{
        response = await dio.get(requestUrl, options: Options(headers: header));
        if(response.statusCode == 200){
          final responseData = response.data;
          PrintHelper.printStatement(message: 'Response Data -> $responseData');
          return ApiResponseModel(
            isSuccessful: true,
            statusCode: response.statusCode,
            data: responseData
          );
        }else{
          PrintHelper.printStatement(message: 'Status Code -> ${response.statusCode}');
          return ApiResponseModel(isSuccessful: false, statusCode: response.statusCode);
        }
      } on DioException catch (error){
        String responseErrorMsg = error.message ?? 'API Error';
        PrintHelper.printStatement(message: 'DioException -> $responseErrorMsg');
        return ApiResponseModel(
          isSuccessful: false, 
          statusCode: error.response?.statusCode, 
          errorMsg: responseErrorMsg
        );
      } on SocketException catch (error){
        return ApiResponseModel(
          isSuccessful: false,
          errorMsg: error.message,
        );
      } catch (error){
        return ApiResponseModel(
          isSuccessful: false,
          errorMsg: 'Unknown Error',
        );
      }
    }else{
      // ============== internet connection error
      return ApiResponseModel(isSuccessful: false, statusCode: 503, errorMsg: 'Internet Connection Error');
    }
  }
}