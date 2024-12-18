import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_bloc/core/dependency/dependency_injector.dart';
import 'package:learn_bloc/features/home/bloc/home_bloc.dart';
import 'package:learn_bloc/features/home/inner_widget/home_products_widget.dart';
import 'package:learn_bloc/utils/color/app_colors.dart';
import 'package:learn_bloc/utils/dimension/app_text_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeBloc homeBloc;

  @override
  void initState() {
    super.initState();
    homeBloc = HomeBloc(homeRepo: getIt());
    homeBloc.add(HomeStartEvent());
  }

  @override
  void dispose() {
    super.dispose();
    homeBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeBloc,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
            leading: IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.menu, color: AppColors.blueColor, size: 24)
            ),
            centerTitle: true,
            title: Text(
              'Home',
              style: GoogleFonts.openSans(
                color: AppColors.blackColor,
                fontSize: AppTextSize.textSize18,
                fontWeight: FontWeight.w600
              ),
            ),
            actions: [
              IconButton(
                onPressed: (){}, 
                icon: const Icon(
                  Icons.notifications, 
                  color: AppColors.blackColor, 
                  size: 24
                )
              )
            ],
          ),
          body: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if(state is HomeLoadingState){
                return const Center(
                  child: CircularProgressIndicator(color: AppColors.blackColor),
                );
              }else if(state is HomeLoadedState){
                return HomeProductsWidget(productList: state.allProductList);
              }

              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}