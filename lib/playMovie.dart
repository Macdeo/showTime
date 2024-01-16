import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayMovie extends StatefulWidget {
  const PlayMovie({super.key});

  @override
  State<PlayMovie> createState() => _PlayMovieState();
}

class _PlayMovieState extends State<PlayMovie> {
  String decription =
      'Miles Morales catapults across the multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConfigColor.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.59,
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
                              'https://fr.web.img6.acsta.net/pictures/23/04/27/10/41/4148646.jpg', fit: BoxFit.cover,)),
                    ),
                  ),
                  Positioned(
                      width: MediaQuery.sizeOf(context).width,
                      top: MediaQuery.sizeOf(context).height * 0.36,
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
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.play_circle_fill_rounded,
                                  color: ConfigColor.secondary,
                                  size: MediaQuery.sizeOf(context).width * 0.18,
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
                                    child: IconTheme(
                                      data: IconThemeData(
                                        color: Colors.amber,
                                        size: 48,
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5.0),
                                        child: StarDisplay(value: 3),
                                      ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(decription, style: GoogleFonts.ubuntu(
                  color: Colors.white,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({super.key, this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          size: 16,
          color: ConfigColor.secondary,
        );
      }),
    );
  }
}
