import 'package:assignment3_ui1/utiles/modules/recent_search_modules.dart';

class RecommendedModule extends RecentSearchModules{
  final String rating;
  final String ratingCount;
  RecommendedModule({
    required super.title,
    required super.subtitle,
    required super.image,
    required this.rating,
    required this.ratingCount
  });

}