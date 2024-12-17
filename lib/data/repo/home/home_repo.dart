import 'package:learn_bloc/core/helper/print_helper.dart';
import 'package:learn_bloc/data/model/global/api_response_model.dart';
import 'package:learn_bloc/service/api_service.dart';

class HomeRepo{
  ApiService apiService;
  HomeRepo({required this.apiService});

  Future<ApiResponseModel> getAllProducts() async{
    ApiResponseModel apiResponseModel = await apiService.getRequest(apiEndPoint: 'products');
    if(apiResponseModel.isSuccessful){
      PrintHelper.printStatement(message: 'Products -> ${apiResponseModel.data}');
      return ApiResponseModel(
        isSuccessful: true, 
        data: apiResponseModel.data
      );
    }else{
      return ApiResponseModel(isSuccessful: false);
    }
  }
}