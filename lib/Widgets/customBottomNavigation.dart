import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


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
          title:  Text(AppLocalizations.of(context)!.homeNav,
          ),
          selectedColor: ConfigColor.secondary,
          unselectedColor: ConfigColor.white,
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.favorite_border),
          title: Text(AppLocalizations.of(context)!.likesNav),
          selectedColor: ConfigColor.secondary,
          unselectedColor: ConfigColor.white,
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.public),
          title: Text(AppLocalizations.of(context)!.discoverNav),
          selectedColor: ConfigColor.secondary,
          unselectedColor: ConfigColor.white,
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.person),
          title: Text(AppLocalizations.of(context)!.profileNav),
          selectedColor: ConfigColor.secondary,
          unselectedColor: ConfigColor.white,
        ),
      ],
      backgroundColor: Colors.black.withOpacity(0.2),
    );
  }
}
