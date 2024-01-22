import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:showtime/Config/configText.dart';
import 'package:showtime/Widgets/profileDrawer.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ProfileDrawer(),
      appBar: AppBar(
        title: Text(
          ConfigText.homeTitle,
          style: GoogleFonts.poppins(
            color: ConfigColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
        backgroundColor: ConfigColor.primary,
        iconTheme: const IconThemeData(color: ConfigColor.white),
      ),
      body: SafeArea(child: Container()),
    );
  }
}
