import 'package:flutter/material.dart';
import 'package:tryproject/view/artists_view/about_view.dart';
import 'package:tryproject/view/artists_view/artist_signup.dart';
import 'package:tryproject/view/homeview.dart';
import 'package:tryproject/view/loginview.dart';
import 'package:tryproject/view/onboard1.dart';
import 'package:tryproject/view/signupview.dart';
import 'package:tryproject/view/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashView(),
        '/login': (context) => LoginView(),
        '/signup': (context) => SignupView(),
        '/home': (context) => HomeView(),
        '/artistonboard' : (context)=> OnboardingScreen_Artist(),
        '/artistSignupView': (context)=> ArtistSignupView(),
        '/OnboardFirst':(context)=> OnboardScreens()

      },
    );
  }
}
