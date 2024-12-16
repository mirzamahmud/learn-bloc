import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_bloc/components/images/custom_app_logo.dart';
import 'package:learn_bloc/components/texts/custom_text_widget.dart';
import 'package:learn_bloc/core/constants/app_constant.dart';
import 'package:learn_bloc/utils/color/app_colors.dart';
import 'package:learn_bloc/utils/dimension/app_spaces.dart';
import 'package:learn_bloc/utils/dimension/app_text_size.dart';
import 'package:learn_bloc/utils/resource/images/app_images.dart';

class SplashBodyContent extends StatelessWidget {
  const SplashBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppLogo(
            imageSrc: AppImages.appLogo, 
            imageSize: 96
          ),
          const SizedBox(height: AppSpaces.space12),
          CustomTextWidget(
            text: AppConstant.appName,
            textAlign: TextAlign.center,
            textStyle: GoogleFonts.openSans(
              color: AppColors.blueColor,
              fontSize: AppTextSize.textSize20,
              fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    );
  }
}