import 'package:flutter/material.dart';
class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xFFFFFFF7),

      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            // Positioned.fill(
            //   child: Image.asset(
            //     'assets/images/background.png', 
            //     // fit: BoxFit.cover,
            //     width: 120,
            //     height: 120,
            //   ),
            // ),
            // Foreground Content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Image.asset(
                    'assets/images/logo.png', 
                    width: 115,
                    height: 115,
                  ),              
                  const SizedBox(height: 5
                  ),
                  Text("Artionet", style: const TextStyle(
                        fontFamily: 'IM_Fell_DW_Pica_SC',
                        fontSize: 35,
                        color: Colors.black, 
                      ),),
                    const SizedBox(height: 0),
                  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0), 
                        child: Text(
                          "Discover artworks, artist and ongoing exhibitions with Artionet.",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'IM_Fell_English_SC',
                            fontSize: 22,
                            color: Colors.black, 
                          ),
                        ),
                      ),
                      Image.asset(
                    'assets/images/crescent.png', 
                    width: 242,
                    height: 115,
                  ), 

                  const SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                            Navigator.pushNamed(context, '/login'); 
                          },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 1,
                      ),
                      backgroundColor: const Color.fromARGB(255, 27, 29, 30), 
                      foregroundColor: const Color(0xFFFFFFF7), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), 
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 16), 
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                            Navigator.pushNamed(context, '/signup'); 
                          },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 43,
                        vertical: 1,
                      ),
                      backgroundColor: const Color.fromARGB(255, 27, 29, 30), 
                      foregroundColor: Colors.white, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), 
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 16), 
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



