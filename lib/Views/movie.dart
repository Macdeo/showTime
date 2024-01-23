import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:google_fonts/google_fonts.dart';

class Movie extends StatefulWidget {
  const Movie({super.key});

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController =
        VideoPlayerController.asset('assets/video/SPIDERMAN.mp4');

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      autoInitialize: true,
      cupertinoProgressColors: ChewieProgressColors(
          playedColor: ConfigColor.secondary,
          handleColor: ConfigColor.secondary),
      allowPlaybackSpeedChanging: false,
      // aspectRatio: _videoPlayerController.value.aspectRatio,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: ConfigColor.primary,
        title: Text(
          'SpiderMan',
          style: GoogleFonts.ubuntu(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: size.height * 0.2,
            ),
          ),
          Expanded(
            flex: 4,
            child: Chewie(
              controller: _chewieController,
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              height: size.height * 0.2,
            ),
          )
        ],
      ),
    );
  }
}
