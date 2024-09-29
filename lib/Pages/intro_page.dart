import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80, bottom: 40, top: 110),
            child: Image.asset(
              'lib/Images/orange.jpg',
              width: 200, // adjust the width
              height: 200, // adjust the height
              fit: BoxFit.cover,
            ),
          ),
          // Text with GoogleFonts (removed 'const')
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // We deliver grocery to your door
          const SizedBox(height: 24),
          // Fresh item every day
          Text(
            "Fresh item every day",
            style: TextStyle(color: Colors.grey[600]),
          ),
          const Spacer(),
          // Get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
