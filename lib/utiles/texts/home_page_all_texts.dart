import 'package:assignment3_ui1/utiles/images/first_page_images.dart';
import 'package:assignment3_ui1/utiles/modules/recent_search_modules.dart';
import 'package:assignment3_ui1/utiles/modules/recommended_module.dart';

class HomePageAllTexts {
  static String appTitle = 'Assignment3';
  static String searchBarText = 'Search by restaurant or food';
  static String search = 'Search';
  static String clearAll = 'Clear All';

  // section headings
  static String recentSearch = 'Recent Search';
  static String recommended = 'Recommended for you';

  //recent searchs heading
  static String dolma = 'Dolma With Rice';
  static String rolled = 'Rolled Borek';

  // recent searchs subtitles
  static String dolmaSub = 'Bayramoğlu Döner, Rüzgarlıbahçe';
  static String rolledSub = 'Sarıyer Börekçisi, Kartal';

  // recommended section
  // titles
  static String pumpkinTitle = 'Pumpkin Hummus';
  static String sweetTitle = 'Sweets Baklava with Nuts';
  static String fishTitle = 'Fish';

  //subtitles
  static String pumpkinSub = 'Beyti Restaurant, Taksim';
  static String sweetSub ='Karaköy Güllüoğlu, Beyoğlu';
  static String fishSub = 'Mercan, Kadıköy';

  // ratings
  static String pumpkinRating = '4.8';
  static String sweetRating = '4.8';
  static String fishRating = '4.8';

  // rating count
  static String pumpkinRatingCount = '233';
  static String sweetRatingCount = '233';
  static String fishRatingCount = '233';

  static List<RecentSearchModules> recentSearchInfos = [
    RecentSearchModules(
        title: HomePageAllTexts.dolma,
        subtitle: HomePageAllTexts.dolmaSub,
        image: FirstPageImages.domlaRice),
    RecentSearchModules(
        title: HomePageAllTexts.rolled,
        subtitle: HomePageAllTexts.rolledSub,
        image: FirstPageImages.rolled),
    RecentSearchModules(
        title: HomePageAllTexts.rolled,
        subtitle: HomePageAllTexts.rolledSub,
        image: FirstPageImages.rolled)
  ];

  static List<RecommendedModule> recommendedInfos = [
    RecommendedModule(
        title: HomePageAllTexts.pumpkinTitle,
        subtitle: HomePageAllTexts.pumpkinSub,
        image: FirstPageImages.pumkinHummus,
        rating: HomePageAllTexts.pumpkinRating,
        ratingCount: HomePageAllTexts.pumpkinRatingCount),
    RecommendedModule(
        title: HomePageAllTexts.sweetTitle,
        subtitle: HomePageAllTexts.sweetSub,
        image: FirstPageImages.sweets,
        rating: HomePageAllTexts.sweetRating,
        ratingCount: HomePageAllTexts.sweetRatingCount),
    RecommendedModule(
        title: HomePageAllTexts.fishTitle,
        subtitle: HomePageAllTexts.fishSub,
        image: FirstPageImages.fish,
        rating: HomePageAllTexts.fishRating,
        ratingCount: HomePageAllTexts.fishRatingCount),
  ];
}