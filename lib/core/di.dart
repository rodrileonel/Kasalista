
import 'package:get_it/get_it.dart';

import '../app/home/bloc/home_bloc.dart';

final getIt = GetIt.instance;

void init(){
  getIt.registerFactory(() => HomeBloc());
}