
import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:google_fonts/google_fonts.dart';


class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.poppins(
            color: ConfigColor.white,
            fontSize: 20,
            fontWeight: FontWeight.bold));
  }
}