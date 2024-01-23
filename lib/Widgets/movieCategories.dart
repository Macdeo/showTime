
import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:google_fonts/google_fonts.dart';


class MovieCategories extends StatelessWidget {
  final String categoryName;
  const MovieCategories({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: ConfigColor.white.withOpacity(0.15),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5),
        child: Text(
          categoryName,
          style: GoogleFonts.poppins(
              color: ConfigColor.white,
              fontWeight: FontWeight.w600,
              fontSize: 13),
        ),
      ),
    );
  }
}
