import 'package:assignment3_ui1/utiles/images/first_page_images.dart';
import 'package:assignment3_ui1/utiles/modules/recommended_module.dart';
import 'package:assignment3_ui1/utiles/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecommendedCard extends StatelessWidget{
  final RecommendedModule _recommendedInfo;
  const RecommendedCard({required RecommendedModule recommendedInfo, super.key}):
      _recommendedInfo = recommendedInfo;

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: width,
      height: 88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            Container(
              height: 88,
              width: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(_recommendedInfo.image),
                )
              )
            ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_recommendedInfo.title, style: recentSearchCardHeading),
              Text(_recommendedInfo.subtitle, style: recentSearchSubStyle),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(FirstPageImages.startIcon, height: 11, width: 11),
                  const SizedBox(width: 5),
                  Text(_recommendedInfo.rating, style: ratingStyle),
                  const SizedBox(width: 3),
                  Text('(${_recommendedInfo.ratingCount} ratings)', style: recentSearchSubStyle)
                ],
              )
            ]
          )
        ],
      )
    );
  }
}