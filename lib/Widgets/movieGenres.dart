
import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:showtime/Models/movieData.dart';
import 'package:google_fonts/google_fonts.dart';


class MovieGenres extends StatelessWidget {
  const MovieGenres({
    super.key,
    required this.movieData,
  });

  final MovieData movieData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movieData.movieGenres.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      movieData.movieGenres[index][1],
                      width: 180,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    movieData.movieGenres[index][0],
                    style: GoogleFonts.poppins(
                      color: ConfigColor.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            );
          }),
    );
  }
}