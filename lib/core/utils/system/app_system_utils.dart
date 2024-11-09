import 'package:flutter/services.dart';
import 'package:learn_bloc/core/utils/color/app_colors.dart';

class AppSystemUtils{

  /// ============= method is used for system ui overlay style
  static void systemUIOverlay(){
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: AppColors.colorWhite,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.colorWhite,
        systemNavigationBarIconBrightness: Brightness.dark
      )
    );
  }

  /// ============= method is used for orienting device
  static void deviceOrientation(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, 
      DeviceOrientation.portraitUp
    ]);
  }
}