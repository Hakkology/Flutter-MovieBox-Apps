import 'package:flutter/material.dart';
import 'package:movie_app/MovieCard/moviecard.dart';
import 'package:movie_app/MovieCard/movieintro.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _navBarState();
}

// ignore: camel_case_types
class _navBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.deepPurpleAccent.shade100,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.deepPurpleAccent,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_max_outlined),
              label: "Home"),
          NavigationDestination(
              selectedIcon: Icon(Icons.run_circle),
              icon: Icon(Icons.run_circle_outlined),
              label: "Movies"),
        ],
      ),
      body: <Widget>[MovieIntro(), const MovieCard()][currentPageIndex],
    );
  }
}
