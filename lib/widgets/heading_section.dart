import 'package:assignment3_ui1/utiles/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class HeadingSection extends StatelessWidget{
  final String _heading;
  const HeadingSection({required String heading, super.key}):
      _heading = heading;
  @override
  Widget build(BuildContext context){
    return Text(
      _heading,
      style: headingTextStyle
    );
  }
}