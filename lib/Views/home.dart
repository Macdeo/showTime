import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';
import 'package:showtime/Config/sectionTitle.dart';
import 'package:showtime/Models/movieCategories.dart';
import 'package:showtime/Models/movieData.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:showtime/Views/profile.dart';
import 'package:showtime/Widgets/customBottomNavigation.dart';
import 'package:showtime/Widgets/movieCategory.dart';
import 'package:showtime/Widgets/movieGenres.dart';
import 'package:showtime/Widgets/relatedMovies.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MovieData movieData = MovieData();
  MovieCategory movieCategory = MovieCategory();
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      // drawer: const ProfileDrawer(),
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          switch (_currentIndex) {
            case 0:
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
                ModalRoute.withName('/'),
              );
              break;
            case 3:
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
                ModalRoute.withName('/'),
              );
              break;
          }
        });
      },
    ),
      appBar: AppBar(
        backgroundColor: ConfigColor.primary,
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/13033815/pexels-photo-13033815.jpeg'),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.welcomeMessage,
              style:
                  GoogleFonts.poppins(color: ConfigColor.white, fontSize: 15),
            ),
            Text(
              AppLocalizations.of(context)!.userName,
              style: GoogleFonts.poppins(
                  color: ConfigColor.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.notifications_none,
            size: 28,
            color: ConfigColor.white,
          ),
          SizedBox(
            width: 22,
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: FaIcon(
              FontAwesomeIcons.search,
              color: ConfigColor.white,
              size: 22,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
              ConfigColor.primary,
              ConfigColor.primary,
              ConfigColor.lightPrimary,
            ])),
        child: SafeArea(
            child: ListView(
          children: [
            ListTile(
              title: SectionTitle(
                title: AppLocalizations.of(context)!.trendingMoviesTitle,
              ),
              trailing: Text(
                AppLocalizations.of(context)!.seeAll,
                style: GoogleFonts.poppins(
                    color: ConfigColor.secondary, fontSize: 14),
              ),
            ),
            RelatedMovies(
              relatedMovieImage: movieData.relatedMovieImage,
              carouselHeight: 200,
              autoplay: true,
              playButton: 20,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SectionTitle(
                title: AppLocalizations.of(context)!.genresTitle,
              ),
            ),
            MovieGenres(movieData: movieData),

            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            //   child: SectionTitle(
            //     title: 'Categories',
            //   ),
            // ),
            // SizedBox(
            //   height: 30,
            //   child: ListView.builder(
            //     itemBuilder: (context, index) {
            //       return MovieCategories(
            //         categoryName: movieCategory.categories[index],
            //       );
            //     },
            //     itemCount: movieCategory.categories.length,
            //     scrollDirection: Axis.horizontal,
            //     padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   ),
            // ),
            //
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SectionTitle(
                title: AppLocalizations.of(context)!.newMovies,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: BannerCarousel(
                borderRadius: 0,
                activeColor: ConfigColor.secondary,
                viewportFraction: 0.50,
                height: size.height * 0.29,
                width: size.width,
                banners: movieData.newMovies,
                initialPage: 1,
              ),
            ),
          ],
        )),
      ),
    );
  }

}
