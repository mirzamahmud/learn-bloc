import 'package:flutter/material.dart';
import 'package:learn_bloc/data/model/product/all_products_model.dart';
import 'package:learn_bloc/utils/color/app_colors.dart';
import 'package:learn_bloc/utils/dimension/app_spaces.dart';

class HomeProductsWidget extends StatelessWidget {
  final List<AllProductsModel> productList;
  const HomeProductsWidget({required this.productList, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      padding: const EdgeInsetsDirectional.symmetric(vertical: AppSpaces.space20, horizontal: AppSpaces.space20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        crossAxisSpacing: 8, 
        mainAxisSpacing: 8
      ),
      itemBuilder: (context, index) => Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: AppSpaces.space8,
          horizontal: AppSpaces.space8
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.blackColor, width: 1)
        ),
      ),
    );
  }
}