import 'package:assignment3_ui1/utiles/all_colors.dart';
import 'package:assignment3_ui1/utiles/images/first_page_images.dart';
import 'package:assignment3_ui1/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchbarSection extends StatelessWidget{
  TextEditingController controller = TextEditingController();

  SearchbarSection({required this.controller, super.key});

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return  Container(
        margin: const EdgeInsets.only(top: 10),
        height: 56,
        child: Row(children: [
          SizedBox(
              height: 50,
              width: width * 0.8,
              child:
              Ass2UI2SearchBar(controller: controller)),
          // filter icon is here
          Container(
              height: 50,
              width: 38,
              margin: const EdgeInsets.only(left: 10),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: AllColors.searchBarBackColor,
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset(
                  FirstPageImages.filterIcon,
                  height: 19,
                  width: 19))
        ]));
  }
}