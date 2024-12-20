import 'package:cached_network_image/cached_network_image.dart';
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
      itemBuilder: (context, index) => InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(8),
        child: Column(
          spacing: AppSpaces.space12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: CachedNetworkImage(
                imageUrl: productList[index].image ?? '',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                imageBuilder: (context, imageProvider) => Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: imageProvider, 
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}