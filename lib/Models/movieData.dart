import 'package:banner_carousel/banner_carousel.dart';

class MovieData {
  final List<List<String>> relatedMovieImage = [
    [
      'Avatar 2',
      'https://wallpapersmug.com/download/1024x768/30d02e/avatar-the-way-of-water-movie.jpg',
      '3h 12m',
      'Sci-Fi/Action',
    ],
    [
      'Rebel Moon: Child of Fire',
      'https://geeko-media.lesoir.be/wp-content/uploads/2023/11/Rebel-Moon-1068x580.jpg',
      '2h 59m',
      'Action/Adventure'
    ],
    [
      'Indiana Jones',
      'https://thecrimsonwhite.com/wp-content/uploads/2023/07/FxbxEb9aEAAqpOS.webp',
      '2h 43m',
      'Sci-Fi/Adventure'
    ],
    [
      'Oppenheimer',
      'https://www.radiofrance.fr/s3/cruiser-production/2023/08/77d9c0e6-37ec-41c3-bb4e-c1902017302f/1200x680_sc_oppenheimer.jpg',
      '1h 52m',
      'Biography/Drama'
    ],
    [
      'Sonic the Hedgehog 2',
      'https://cdn.mobilesyrup.com/wp-content/uploads/2022/05/sonic-the-hedgehog-2-scaled.jpg',
      '2h 02m',
      'Action/Comedy'
    ],
  ];

  List<BannerModel> newMovies = [
    BannerModel(
      imagePath:
      'https://fr.web.img4.acsta.net/pictures/23/10/05/15/02/3022916.jpg',
      id: "1",
    ),
    BannerModel(
      imagePath:
      'https://m.media-amazon.com/images/M/MV5BNDcxM2RiOWMtMGEzMC00NDEyLTgzMjEtOWZjYzVhN2E2ZjcyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg',
      id: "2",
    ),
    BannerModel(
      imagePath:
      'https://m.media-amazon.com/images/M/MV5BNzk4ODdiOTEtMTk3YS00MzZmLTgyOWMtYzc1NjgxYWE2MmMyXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg',
      id: "3",
    ),
    BannerModel(
      imagePath:
      'https://fr.web.img3.acsta.net/c_310_420/pictures/23/12/21/12/11/0322473.jpg',
      id: "4",
    ),
    BannerModel(
      imagePath:
      'https://fr.web.img6.acsta.net/pictures/23/12/13/17/19/3834479.jpg',
      id: "5",
    ),
    BannerModel(
      imagePath:
      'https://i.ebayimg.com/images/g/Gv8AAOSwyLRk6vKS/s-l1200.webp',
      id: "6",
    ),
    BannerModel(
      imagePath:
      'https://m.media-amazon.com/images/M/MV5BYjI5ZjVmZjEtYTliMS00Mjk3LWJkNTMtMjU0MTRkOTU4NWQ3XkEyXkFqcGdeQXVyMTAxNzQ1NzI@._V1_.jpg',
      id: "7",
    ),
  ];

  final List<List<String>> movieGenres = [

    [
      'Adventure',
      'https://thecinemaholic.com/wp-content/uploads/2017/08/jurassic-fallen-kingdom-trailer-1-970.jpg',
    ],
    [
      'Comedy',
      'https://www.osn.com/getattachment/watch/hot-topics/osn-blogs/May-2018/Laugh-out-loud-with-our-top-comedy-movies/ted.jpg.aspx',
    ],
    [
      'Sci-Fi',
      'https://hips.hearstapps.com/hmg-prod/images/scale-1630514807.jpeg?resize=980:*',
    ],
    [
      'Animation',
      'https://wallpapercave.com/wp/wp5290036.jpg',
    ],
    [
      'Action',
      'https://oyster.ignimgs.com/wordpress/stg.ign.com/2019/12/johnwickchapter3.jpg?fit=bounds&width=1280&height=720',
    ],
    [
      'Drama',
      'https://i.insider.com/5a85c406d0307236008b4774?width=700',
    ],
  ];
}
