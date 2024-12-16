import 'package:flutter/material.dart';

class OnboardScreens extends StatefulWidget {
  const OnboardScreens({super.key});

  @override
  State<OnboardScreens> createState() => _OnboardScreensState();
}

class _OnboardScreensState extends State<OnboardScreens> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushNamed(context, '/artonboard_3');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF7),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              _buildOnboardFirst(context),
              _buildOnboardSecond(context),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login'); // Navigate to home or desired route
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  fontFamily: 'IM_FELL_DW_Pica',
                  color: Colors.black,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: TextButton(
              onPressed: _goToNextPage,
              child: Text(
                _currentPage == 1 ? "Finish" : "Next",
                style: const TextStyle(
                  fontFamily: 'IM_FELL_DW_Pica',
                  color: Colors.black,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardFirst(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/flower.png',
                width: 150,
                height: 158,
              ),
              const SizedBox(height: 28),
              const Divider(
                color: Colors.black54,
                thickness: 0.5,
                indent: 90.0,
                endIndent: 90.0,
              ),
              const SizedBox(height: 23),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0),
                child: Text(
                  "Upload your creations with titles, descriptions, and prices to build your online portfolio.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'IM_FELL_DW_Pica',
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildOnboardSecond(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/second_image.png',
                width: 150,
                height: 158,
              ),
              const SizedBox(height: 28),
              const Divider(
                color: Colors.black54,
                thickness: 0.5,
                indent: 90.0,
                endIndent: 90.0,
              ),
              const SizedBox(height: 23),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0),
                child: Text(
                  "Engage with buyers and art enthusiasts while managing your sales effectively.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'IM_FELL_DW_Pica',
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        )
      ],
    );
  }
}
