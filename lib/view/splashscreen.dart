import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF7),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          
          Center(
            child: Image.asset(
                      'assets/images/splash1.gif',
                      width:135,
                      height:120,

                    ),  
                    
          ),
           Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 35.0), 
                 child: Text(
                          "Welcome To Artionet.",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'IM_Fell_DW_Pica_SC',
                            fontSize: 25,
                            color: Colors.black, 
                          ),
                        ),
                      ),

        ],
      ),
    );
  }
}

