import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_gdsc/login_register_task/LoginScrean.dart';
import 'package:task_gdsc/login_register_task/RegisterScrean.dart';
import 'package:task_gdsc/shared/Cubite/Cubite.dart';

import 'BlocObserver.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RegisterScrean(),
      ),
    );
  }
}


