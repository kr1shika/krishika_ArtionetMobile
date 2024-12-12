import 'package:flutter/material.dart';
import 'package:tryproject/view/loginview.dart';
import 'package:tryproject/view/onboard.dart';
import 'package:tryproject/view/signupview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/onboard',
      routes: {
        '/onboard': (context)=> Onboard(),
        '/login': (context)=> LoginView(),
        '/signup': (context)=> SignupView(),

      },

    );
  }
}

