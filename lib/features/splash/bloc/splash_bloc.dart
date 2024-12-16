import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState>{
  SplashBloc() : super(SplashInitialState()){
    on<AppStartedEvent>((event, emit) async{
      await Future.delayed(const Duration(seconds: 4));
      emit(SplashLoadedState());
    });
  }
}