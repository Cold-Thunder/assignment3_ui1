import 'package:assignment3_ui1/screens/home_page.dart';
import 'package:assignment3_ui1/utiles/all_colors.dart';
import 'package:assignment3_ui1/utiles/texts/home_page_all_texts.dart';

import 'package:flutter/material.dart';

class HomeMain extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: HomePageAllTexts.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AllColors.appBarColor,
          iconTheme: IconThemeData(
            color: AllColors.headingBlack
          )
        )
      ),
      home: HomePage()
    );
  }
}