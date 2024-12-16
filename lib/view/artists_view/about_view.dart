import 'package:flutter/material.dart';
class Artist_onboard extends StatelessWidget {
  const Artist_onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xFFFFFFF7),

      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Image.asset(
                    'assets/images/logo.png', 
                    width: 90,
                    height: 100,
                  ),              
                  
                  Text("Artionet for artists", style: const TextStyle(
                        fontFamily: 'IM_Fell_DW_Pica_SC',
                        fontSize: 25,
                        color: Colors.black, 
                      ),),
                    Image.asset(
                    'assets/images/crest_2.png', 
                    width: 290,
                    height: 90,
                  ), 
                  const SizedBox(height: 0,),
                    
                  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0 ), 
                        child: 
                        Text(
                                "With Artionet you can set up your artist page to share your story and art journey.",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: 'IM_FELL_DW_Pica',
                                  fontSize: 25,
                                  color: Colors.black, 
                                  
                                ),
                              ),
                        
                      ),
                      
                  const SizedBox(height: 16),
                  
                  

                  GestureDetector(
                        onTap: () { 
                              Navigator.pushNamed(context, '/artonboard_2'); 
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 18,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}



