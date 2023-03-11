import 'package:flutter/material.dart';

class LoginScrean extends StatefulWidget {
  const LoginScrean({Key? key}) : super(key: key);

  @override
  State<LoginScrean> createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'LOGIN SCREAN ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),
        ),
      ),
    );
  }
}
