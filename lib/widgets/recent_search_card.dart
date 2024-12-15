import 'package:assignment3_ui1/utiles/images/first_page_images.dart';
import 'package:assignment3_ui1/utiles/modules/recent_search_modules.dart';
import 'package:assignment3_ui1/utiles/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class RecentSearchCard extends StatelessWidget{
  final RecentSearchModules _recentSearchInfo;

  const RecentSearchCard({required RecentSearchModules searchInfo, super.key}):
  _recentSearchInfo = searchInfo;
  @override
  Widget build(BuildContext context){
    return Container(
      height: 172,
      width: 165,
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: AssetImage(_recentSearchInfo.image),
              )
            ),
          ),
          const SizedBox(height: 10),
          Text(_recentSearchInfo.title, style: recentSearchCardHeading),
          Text(
              _recentSearchInfo.subtitle,
              style: recentSearchSubStyle,
            overflow: TextOverflow.ellipsis
          )
        ]
      )
    );
  }
}