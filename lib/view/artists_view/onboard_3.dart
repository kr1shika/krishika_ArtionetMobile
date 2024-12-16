import 'package:flutter/material.dart';

class Artonboard3View extends StatelessWidget {
  const Artonboard3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: 
          Column(
            children: [
              Image.asset(
                      'assets/images/deer.png',
                      width:150,
                      height:158,
                    ),     const SizedBox(height: 28),
                  Divider(
                    color: Colors.black54, 
                    thickness: 0.5,     
                    indent: 90.0,       
                    endIndent: 90.0,   
                  ), const SizedBox(height: 23),

                 Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0
                         ), 
                        child: 
                        Text(
                                "Communicate directly with buyers and receive feedback. Connect with people who value art as much as you do ",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: 'IM_FELL_DW_Pica',
                                  fontSize: 25,
                                  color: Colors.black, 
                                  
                                ),
                              ),
                        
                      ), const SizedBox(height: 35),

                       GestureDetector(
                        onTap: () { 
                              Navigator.pushNamed(context, '/artistSignupView'); 
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 0,
                          ),
                          child: Text(
                            "Next",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IM_FELL_DW_Pica',
                              color: Colors.black,
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )
            ],
          ),)
          

        ],
      ),
    

    );
  }
}