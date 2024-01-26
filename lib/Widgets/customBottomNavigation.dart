import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:showtime/Config/configColor.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      selectedItemColor: ConfigColor.white,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        SalomonBottomBarItem(
          icon: const Icon(Icons.home_filled),
          title: const Text("Home"),
          selectedColor: ConfigColor.secondary,
          unselectedColor: ConfigColor.white,
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.favorite_border),
          title: const Text("Likes"),
          selectedColor: ConfigColor.secondary,
          unselectedColor: ConfigColor.white,
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.public),
          title: const Text("Discover"),
          selectedColor: ConfigColor.secondary,
          unselectedColor: ConfigColor.white,
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.person),
          title: const Text("Profile"),
          selectedColor: ConfigColor.secondary,
          unselectedColor: ConfigColor.white,
        ),
      ],
      backgroundColor: Colors.black.withOpacity(0.2),
    );
  }
}
