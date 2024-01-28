import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:showtime/Views/playMovie.dart';

class RelatedMovies extends StatelessWidget {
  const RelatedMovies(
      {super.key,
      required this.relatedMovieImage,
      required this.carouselHeight,
      required this.autoplay,
      required this.playButton});

  final List<List<String>> relatedMovieImage;
  final double carouselHeight;
  final bool autoplay;
  final double playButton;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return CarouselSlider(
      options: CarouselOptions(
          height: carouselHeight,
          viewportFraction: 0.7,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,
          autoPlayCurve: Curves.easeInSine,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 8)),
      items: [1, 2, 3, 4, 5, 6].map((i) {
        return Builder(
          builder: (BuildContext context) {

            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PlayMovie(selectedMovie: i,)));
              },
              child: Container(
                width: size.width,
                height: 500,
                margin: const EdgeInsets.symmetric(horizontal: 2.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    color: ConfigColor.secondary,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(relatedMovieImage[i - 1][1]))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(playButton),
                      child: CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.black.withOpacity(0.7),
                          child: const Icon(
                            Icons.play_arrow_rounded,
                            size: 40,
                            color: ConfigColor.white,
                          )),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                child: RichText(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  text: TextSpan(
                                    text: relatedMovieImage[i - 1][0],
                                    style: GoogleFonts.poppins(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: ConfigColor.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 10.0, bottom: 6.0),
                                child: Text(
                                  '${relatedMovieImage[i - 1][2]} • ${relatedMovieImage[i - 1][3]}',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: ConfigColor.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
