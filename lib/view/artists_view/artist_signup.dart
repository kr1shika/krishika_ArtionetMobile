import 'package:flutter/material.dart';

class ArtistSignupView extends StatelessWidget {
  const ArtistSignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo
                     const SizedBox(height: 130),
                    Image.asset(
                      'assets/images/logo.png',
                      width:110,
                      height:110,
                    ),     const SizedBox(height: 5),

                    // Signup Text
                    Text(
                      "Sign up to artionet",
                      style: const TextStyle(
                        fontFamily: 'IM_Fell_DW_Pica_SC',
                        fontSize: 33,
                        color: Colors.black, 
                      ),
                    ),
                    const SizedBox(height: 21),
                    // Input Fields
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 41.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                          hintText: "Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8), 
                        ),
                        style: const TextStyle(
                          fontFamily:'IM_FELL_English_SC',
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 61, 57, 57),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 41.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                        ),
                        style: const TextStyle(
                          fontFamily:'IM_FELL_English_SC',
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 61, 57, 57),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 41.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8), 
                        ),
                        style: const TextStyle(
                          fontFamily:'IM_FELL_English_SC',
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 61, 57, 57),
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),
                    ElevatedButton(
                      onPressed: () {
                            Navigator.pushNamed(context, '/login'); 
                          },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 4,
                        ),
                        backgroundColor: const Color.fromARGB(255, 27, 29, 30),
                        foregroundColor: const Color(0xFFFFFFF7),
                        // textStyle: const TextStyle( fontFamily:'IM_Fell_DW_Pica_SC',),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), 
                        ),
                      ),
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(fontFamily:'IM_FELL_Great_Primer',fontSize: 18), 
                      ),
                    ),
                    const SizedBox(height: 6),
                     ElevatedButton(
                      onPressed: () {
                            Navigator.pushNamed(context, '/login'); 
                          },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), side: BorderSide.none),
                      ),
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontFamily:'Inknut_Antiqua',
                          color: Colors.black, 
                          fontSize: 15,
                          
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
