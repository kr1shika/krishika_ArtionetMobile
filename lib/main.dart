import 'package:flutter/material.dart';
import 'package:tryproject/view/artists_view/about_view.dart';
import 'package:tryproject/view/artists_view/artist_signup.dart';
import 'package:tryproject/view/artists_view/artonboard_2.dart';
import 'package:tryproject/view/artists_view/onboard_3.dart';
import 'package:tryproject/view/homeview.dart';
import 'package:tryproject/view/loginview.dart';
import 'package:tryproject/view/onboard.dart';
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
        '/onboard': (context) => Onboard(),
        '/login': (context) => LoginView(),
        '/signup': (context) => SignupView(),
        '/home': (context) => HomeView(),
        '/artistonboard' : (context)=> Artist_onboard(),
        '/artistSignupView': (context)=> ArtistSignupView(),
        '/artonboard_2': (context)=> Artonboard2View(),
        '/artonboard_3': (context)=> Artonboard3View(),
        '/OnboardFirst':(context)=> OnboardScreens()

      },
    );
  }
}
