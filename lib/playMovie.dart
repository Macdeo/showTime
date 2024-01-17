import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PlayMovie extends StatefulWidget {
  const PlayMovie({super.key});

  @override
  State<PlayMovie> createState() => _PlayMovieState();
}

class _PlayMovieState extends State<PlayMovie> {
  String description =
      'Miles Morales catapults across the multiverse, where he encounters a team of Spider-People charged with protecting its very existence.';

  final List<List<String>> relatedMovieImage = [
    [
      'Oppenheimer',
      'https://www.radiofrance.fr/s3/cruiser-production/2023/08/77d9c0e6-37ec-41c3-bb4e-c1902017302f/1200x680_sc_oppenheimer.jpg'
    ],
    [
      'Rebel Moon',
      'https://geeko-media.lesoir.be/wp-content/uploads/2023/11/Rebel-Moon-1068x580.jpg'
    ],
    [
      'Rebel Moon',
      'https://geeko-media.lesoir.be/wp-content/uploads/2023/11/Rebel-Moon-1068x580.jpg'
    ],
    [
      'Rebel Moon',
      'https://geeko-media.lesoir.be/wp-content/uploads/2023/11/Rebel-Moon-1068x580.jpg'
    ],
    [
      'Rebel Moon',
      'https://geeko-media.lesoir.be/wp-content/uploads/2023/11/Rebel-Moon-1068x580.jpg'
    ],
    [
      'Rebel Moon',
      'https://geeko-media.lesoir.be/wp-content/uploads/2023/11/Rebel-Moon-1068x580.jpg'
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConfigColor.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    'https://fr.web.img6.acsta.net/pictures/23/04/27/10/41/4148646.jpg',
                    fit: BoxFit.cover,
                  )),
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
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'RELATED',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 250,
                      viewportFraction: 0.7,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            margin: const EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: ConfigColor.secondary,
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                    image: NetworkImage(
                                        relatedMovieImage[i - 1][1]))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Text(
                                    relatedMovieImage[i - 1][0],
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          const Shadow(
                                            offset: Offset(0, 5.0),
                                            blurRadius: 2.0,
                                            color: Colors.black,
                                          ),
                                          const Shadow(
                                            offset: Offset(5.0, 0),
                                            blurRadius: 2.0,
                                            color: Colors.black,
                                          ),
                                        ],
                                        color: ConfigColor.secondary),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
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
