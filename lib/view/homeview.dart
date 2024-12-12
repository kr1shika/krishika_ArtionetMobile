import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFF7),
        centerTitle: true, // Ensures the title (logo) is centered
        title: Image.asset(
          'assets/images/logo.png',
          height: 48,
          fit: BoxFit.contain,
        ),
        
      ),
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Row(
                    
                    children: [
                        
                      Column(

                    children: [
                      Image.asset(
                        'assets/images/hel.png',
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '"Deities of Nepal II", 2024',
                        style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),

                  const SizedBox(width: 20,),
                      
                      Column(

                    children: [
                      Image.asset(
                        'assets/images/helen.png',
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '"Deities of Nepal II", 2024',
                        style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                      const SizedBox(height: 8),
                    ],
                  )],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
