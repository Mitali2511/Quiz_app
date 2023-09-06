import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background2.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          // Scrollable view
          SingleChildScrollView(
            child: Column(
              children: [
                // Add your content here
                // For example:
                Container(
                  height: 800, // Adjust the height according to your needs
                  color: Colors.transparent, // Make the container transparent
                  child: Center(
                    child: TextField()
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}