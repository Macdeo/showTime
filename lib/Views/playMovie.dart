import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:showtime/Models/movieData.dart';
import 'package:showtime/Models/starDisplay.dart';
import 'package:showtime/Views/movie.dart';
import 'package:showtime/Widgets/relatedMovies.dart';
import 'package:awesome_ripple_animation/awesome_ripple_animation.dart';

class PlayMovie extends StatefulWidget {
  const PlayMovie({super.key});

  @override
  State<PlayMovie> createState() => _PlayMovieState();
}

class _PlayMovieState extends State<PlayMovie> {
  MovieData movieData = MovieData();
  String description =
      'Miles Morales catapults across the multiverse, where he encounters a team of Spider-People charged with protecting its very existence.';

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: ConfigColor.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height:size.height * 0.59,
                width: double.infinity,
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Colors.transparent,
                      ],
                    ).createShader(
                        Rect.fromLTRB(0, 100, rect.width, rect.height * 0.75));
                  },
                  blendMode: BlendMode.dstIn,
                  child: SizedBox(
                      child: Image.network(
                    'https://fr.web.img6.acsta.net/pictures/23/04/27/10/41/4148646.jpg',
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              Positioned(
                  width: size.width,
                  top: size.height * 0.36,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SpiderMan',
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 37),
                                ),
                                Text(
                                  'Animation',
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Movie()));
                              },
                              icon: Stack(
                                children: [
                                  Positioned.fill(
                                      child: RippleAnimation(
                                    size: const Size(5, 5),
                                    repeat: true,
                                    color: ConfigColor.secondary,
                                    minRadius: 30,
                                    ripplesCount: 5,
                                    child: const SizedBox(),
                                  )),
                                  CircleAvatar(
                                    backgroundColor: ConfigColor.secondary,
                                    radius: 32,
                                    child: Icon(
                                      Icons.play_arrow_rounded,
                                      color: ConfigColor.primary,
                                      size: size.width *
                                          0.15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Table(
                          children: <TableRow>[
                            TableRow(children: <Widget>[
                              Center(
                                  child: Text(
                                'Rating',
                                style:
                                    GoogleFonts.ubuntu(color: Colors.white60),
                              )),
                              Center(
                                  child: Text(
                                'Age',
                                style:
                                    GoogleFonts.ubuntu(color: Colors.white60),
                              )),
                              Center(
                                  child: Text(
                                'Language',
                                style:
                                    GoogleFonts.ubuntu(color: Colors.white60),
                              )),
                            ]),
                            TableRow(children: <Widget>[
                              Center(
                                  child: Text(
                                '4.9',
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white60,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                              Center(
                                  child: Text(
                                'PG',
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white60,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                              Center(
                                  child: Text(
                                'EN',
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white60,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                            ]),
                            TableRow(children: <Widget>[
                              const Center(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(vertical: 5.0),
                                  child: StarDisplay(value: 3),
                                ),
                              ),
                              Center(
                                  child: Text(
                                'Rating',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.white60,
                                ),
                              )),
                              Center(
                                  child: Text(
                                '+13 more',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.white60,
                                ),
                              )),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      description,
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Related',
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'See all',
                          style: GoogleFonts.ubuntu(
                            color: ConfigColor.secondary,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RelatedMovies(
                    relatedMovieImage: movieData.relatedMovieImage,
                    carouselHeight: 250,
                    autoplay: false,
                    playButton: 40,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
