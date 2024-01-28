import 'package:banner_carousel/banner_carousel.dart';

class MovieData {
  final List<List<String>> relatedMovieImage = [
    [
      'Avatar: The Way of Water',
      'https://wallpapersmug.com/download/1024x768/30d02e/avatar-the-way-of-water-movie.jpg',
      '3h 12m',
      'Sci-Fi/Action',
      '4.9',
      'PG-13',
      'EN',
      'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na\'vi race to protect their home.'
    ],
    [
      'Rebel Moon: Child of Fire',
      'https://geeko-media.lesoir.be/wp-content/uploads/2023/11/Rebel-Moon-1068x580.jpg',
      '2h 59m',
      'Action/Adventure',
      '4.4',
      'PG-13',
      'EN',
      'When a peaceful settlement on the edge of a distant moon finds itself threatened by the armies of a tyrannical ruling force, a mysterious stranger living among its villagers becomes their best hope for survival.'
    ],
    [
      'Indiana Jones and the Dial of Destiny',
      'https://thecrimsonwhite.com/wp-content/uploads/2023/07/FxbxEb9aEAAqpOS.webp',
      '2h 43m',
      'Sci-Fi/Adventure',
      '2.8',
      'PG',
      'EN',
      'Archaeologist Indiana Jones races against time to retrieve a legendary artifact that can change the course of history.'
    ],
    [
      'Oppenheimer',
      'https://www.radiofrance.fr/s3/cruiser-production/2023/08/77d9c0e6-37ec-41c3-bb4e-c1902017302f/1200x680_sc_oppenheimer.jpg',
      '1h 52m',
      'Biography/Drama',
      '4.2',
      'R',
      'EN',
      'The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb.'
    ],
    [
      'Spiderman across the spider verse',
      'https://fr.web.img6.acsta.net/pictures/23/04/27/10/41/4148646.jpg',
      '2h 18m',
      'Animation/Action',
      '5.0',
      'PG',
      'EN',
      'Miles Morales catapults across the multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.'
    ],
    [
      'Sonic the Hedgehog 2',
      'https://cdn.mobilesyrup.com/wp-content/uploads/2022/05/sonic-the-hedgehog-2-scaled.jpg',
      '2h 02m',
      'Action/Comedy',
      '3.9',
      'PG',
      'EN',
      'When the manic Dr. Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.'
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
      imagePath: 'https://i.ebayimg.com/images/g/Gv8AAOSwyLRk6vKS/s-l1200.webp',
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
