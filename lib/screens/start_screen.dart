import 'package:fitness_app_ui/screens/main_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.only(left: 60, right: 60, top: 40),
            child: const Text(
              'A Healthy Mind in a Healthy Body',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: -50,
            child: Image.asset(
              'asset3.png',
              height: size.height * 0.85,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MainScreen(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                        ),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      width: size.width * 0.5,
                      child: const Center(
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                      ),
                      color: Color(0xFFDB6318),
                    ),
                    width: size.width * 0.5,
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
