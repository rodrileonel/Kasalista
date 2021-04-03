import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di.dart';
import '../app/home/bloc/home_bloc.dart';
import '../app/home/pages/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<HomeBloc>())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePage()
      ),
    );
  }
}