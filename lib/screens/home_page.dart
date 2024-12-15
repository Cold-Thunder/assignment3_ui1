import 'package:assignment3_ui1/utiles/all_colors.dart';
import 'package:assignment3_ui1/utiles/modules/recent_search_modules.dart';
import 'package:assignment3_ui1/utiles/modules/recommended_module.dart';
import 'package:assignment3_ui1/utiles/styles/text_styles.dart';
import 'package:assignment3_ui1/utiles/texts/home_page_all_texts.dart';
import 'package:assignment3_ui1/widgets/heading_section.dart';
import 'package:assignment3_ui1/widgets/recent_search_card.dart';
import 'package:assignment3_ui1/widgets/recommended_card.dart';
import 'package:assignment3_ui1/widgets/search_bar_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController _controller = TextEditingController();
  final List<RecentSearchModules> _recentSearchs = HomePageAllTexts.recentSearchInfos;
  final List<RecommendedModule> _recommendedInfos = HomePageAllTexts.recommendedInfos;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: AllColors.appBarColor,
            appBar: AppBar(
              // app bar close icon
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close,
                      size: 30, color: AllColors.headingBlack)),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(children: [
                  const SizedBox(height: 10),
                  // heading section
                  SizedBox(
                    width: width,
                    child: HeadingSection(heading: HomePageAllTexts.search),
                  ),
                  //search bar section
                  SearchbarSection(controller: _controller),
                  const SizedBox(height: 20),
                  // recent search heading section
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    width: width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingSection(heading: HomePageAllTexts.recentSearch),
                      InkWell(
                        child: Text(HomePageAllTexts.clearAll,
                          style: clearAllStyle
                        )
                      ),
                    ]
                  )),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 172,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _recentSearchs.length,
                      itemBuilder: (context, index){
                        return RecentSearchCard(searchInfo: _recentSearchs[index]);
                      }
                    )
                  ),
                  const SizedBox(height: 25),
                  // recommended for you section heading
                  SizedBox(
                    width: width,
                    child: HeadingSection(heading: HomePageAllTexts.recommended)
                  ),
                  const SizedBox(height: 10),
                  // recommended for you section
                  SizedBox(
                    height: 350,
                    child: ListView.builder(
                      itemCount: _recommendedInfos.length,
                      itemBuilder: (context, index){
                        return RecommendedCard(recommendedInfo: _recommendedInfos[index]);
                      },
                    )
                  )
                ]),
              ),
            )));
  }
}
