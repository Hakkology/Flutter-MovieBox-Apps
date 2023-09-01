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
              'assets/images/CinemaView.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0.3),
                    Color.fromRGBO(255, 255, 255, 0.7),
                  ],
                ),
              ),
            ),
          ),
          const Center(child: Text('This is the movie introduction page!')),
        ],
      ),
    );
  }
}
