import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/data/model/global/api_response_model.dart';
import 'package:learn_bloc/data/model/product/all_products_model.dart';
import 'package:learn_bloc/data/repo/home/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeRepo homeRepo;
  HomeBloc({required this.homeRepo}) : super(HomeInitialState()){
    on<HomeStartEvent>((event, emit) async{
      emit(HomeLoadingState());
      await fetchData();
      emit(HomeLoadedState(allProductList: allProductList));
    });
  }

  List<AllProductsModel> allProductList = [];

  Future<void> fetchData() async{
    ApiResponseModel apiResponseModel = await homeRepo.getAllProducts();
    if (apiResponseModel.isSuccessful) {
      allProductList = (apiResponseModel.data as List).map((e) => AllProductsModel.fromMap(e)).toList();
    }
  }
}