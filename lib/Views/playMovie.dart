import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:showtime/Config/configText.dart';
import 'package:showtime/Models/movieData.dart';
import 'package:showtime/Models/starDisplay.dart';
import 'package:showtime/Views/movie.dart';
import 'package:showtime/Widgets/relatedMovies.dart';
import 'package:awesome_ripple_animation/awesome_ripple_animation.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PlayMovie extends StatefulWidget {
  const PlayMovie({super.key, required this.selectedMovie});
  final int selectedMovie;

  @override
  State<PlayMovie> createState() => _PlayMovieState();
}

class _PlayMovieState extends State<PlayMovie> {
  MovieData movieData = MovieData();

  Widget movieTitleAnimation(String text) => SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.66,
        child: Marquee(
          text: text,
          style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ConfigColor.white),
          blankSpace: 50,
        ),
      );

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
                height: size.height * 0.59,
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
                    movieData.relatedMovieImage[widget.selectedMovie - 1][1],
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              Positioned(
                  top: 50,
                  left: 15,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: ConfigColor.primary.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 20,
                        color: ConfigColor.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )),
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
                                movieData
                                            .relatedMovieImage[
                                                widget.selectedMovie - 1][0]
                                            .length >
                                        10
                                    ? SizedBox(
                                        width: size.width * 0.60,
                                        height: 30,
                                        child: movieTitleAnimation(
                                            movieData.relatedMovieImage[
                                                widget.selectedMovie - 1][0]),
                                      )
                                    : SizedBox(
                                        width: size.width * 0.60,
                                        child: Text(
                                          movieData.relatedMovieImage[
                                              widget.selectedMovie - 1][0],
                                          style: GoogleFonts.ubuntu(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 37),
                                        ),
                                      ),
                                Text(
                                  movieData.relatedMovieImage[
                                      widget.selectedMovie - 1][3],
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
                                      size: size.width * 0.15,
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
                                AppLocalizations.of(context)!.rating,
                                style:
                                    GoogleFonts.ubuntu(color: Colors.white60),
                              )),
                              Center(
                                  child: Text(
                                AppLocalizations.of(context)!.age,
                                style:
                                    GoogleFonts.ubuntu(color: Colors.white60),
                              )),
                              Center(
                                  child: Text(
                                AppLocalizations.of(context)!.language,
                                style:
                                    GoogleFonts.ubuntu(color: Colors.white60),
                              )),
                            ]),
                            TableRow(children: <Widget>[
                              Center(
                                  child: Text(
                                movieData.relatedMovieImage[
                                    widget.selectedMovie - 1][4],
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white60,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                              Center(
                                  child: Text(
                                movieData.relatedMovieImage[
                                    widget.selectedMovie - 1][5],
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white60,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                              Center(
                                  child: Text(
                                movieData.relatedMovieImage[
                                    widget.selectedMovie - 1][6],
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white60,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                            ]),
                            TableRow(children: <Widget>[
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: StarDisplay(
                                      value: double.parse(
                                          movieData.relatedMovieImage[
                                              widget.selectedMovie - 1][4])),
                                ),
                              ),
                              Center(
                                  child: Text(
                                AppLocalizations.of(context)!.rating,
                                style: GoogleFonts.ubuntu(
                                  color: Colors.white60,
                                ),
                              )),
                              Center(
                                  child: Text(
                                AppLocalizations.of(context)!.languageNumber,
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
                    child: RichText(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: movieData
                            .relatedMovieImage[widget.selectedMovie - 1][7],
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                        ),
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
                          AppLocalizations.of(context)!.related,
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          AppLocalizations.of(context)!.seeAll,
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
