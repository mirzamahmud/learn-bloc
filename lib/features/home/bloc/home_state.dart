part of 'home_bloc.dart';

sealed class HomeState {}

class HomeInitialState extends HomeState{}

class HomeLoadingState extends HomeState{}

class HomeLoadedState extends HomeState{
  final List<AllProductsModel> allProductList;
  HomeLoadedState({required this.allProductList});
}

class HomeErrorState extends HomeState{}