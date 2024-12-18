import 'package:get_it/get_it.dart';
import 'package:learn_bloc/data/repo/home/home_repo.dart';
import 'package:learn_bloc/service/api_service.dart';

final getIt = GetIt.instance;

void injectDependency(){
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<HomeRepo>(HomeRepo(apiService: getIt()));
}