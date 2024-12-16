import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/core/helper/print_helper.dart';

class AppBlocObserver extends BlocObserver{

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    PrintHelper.printBlocLifecycle(message: 'Bloc Created -> ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    PrintHelper.printBlocLifecycle(message: 'Event Added -> ${bloc.runtimeType} Event -> $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    PrintHelper.printBlocLifecycle(message: 'Change Bloc State -> ${bloc.runtimeType}, Change -> $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    PrintHelper.printBlocLifecycle(message:'Error in -> ${bloc.runtimeType}: $error');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    PrintHelper.printBlocLifecycle(message:'Bloc Closed -> ${bloc.runtimeType}');
  }
}