import 'package:flutter/material.dart';
import 'package:task_gdsc/note_task/note_screan_1.dart';

import 'login_register_task/RegisterScrean.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NoteScrean_1(),
    );
  }
}


