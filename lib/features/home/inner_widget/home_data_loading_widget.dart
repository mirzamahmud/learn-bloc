import 'package:flutter/material.dart';
import 'package:learn_bloc/utils/color/app_colors.dart';
import 'package:learn_bloc/utils/dimension/app_spaces.dart';
import 'package:shimmer/shimmer.dart';

class HomeDataLoadingWidget extends StatelessWidget {
  const HomeDataLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: GridView.builder(
        itemCount: 12,
        padding: const EdgeInsetsDirectional.symmetric(vertical: AppSpaces.space20, horizontal: AppSpaces.space20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 8, 
          mainAxisSpacing: 8
        ),
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSpaces.space12,
          children: [
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 256,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.whiteColor
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 14,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(8)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 128,
                  height: 18,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
                Container(
                  width: 48,
                  height: 12,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ],
            )  
          ],
        ),
      ),
    );
  }
}