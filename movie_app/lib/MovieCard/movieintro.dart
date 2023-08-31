import 'package:flutter/material.dart';

class MovieIntro extends StatelessWidget {
  const MovieIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Home Cinema",
          style: TextStyle(
              color: Color.fromARGB(255, 217, 195, 255), fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/CinemaView.jpg", // Replace with your image path
              fit: BoxFit.cover,
              color: const Color.fromRGBO(255, 255, 255,
                  0.7), // This adds transparency to the image. Adjust the last value (0.7) to your needs.
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ],
      ),
    );
  }
}
