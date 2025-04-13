import 'package:flutter/material.dart';

class AppTextStyles {
  static const headline = TextStyle(
    fontSize: 90,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    height: 1.0,
  );

  static const headline2 = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w600,
    color: Colors.white70,
  );

  static const headline3 = TextStyle(
    fontSize: 20,
    color: Colors.white,
  );

  static const normal = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  
 // static const customText = Text(data)
}


class CustomText2 extends StatelessWidget {
  final String text;
  final TextStyle style;

  const CustomText2.headline(this.text, {super.key}) : style = AppTextStyles.headline;
  const CustomText2.headline2(this.text, {super.key}) : style = AppTextStyles.headline2;
  const CustomText2.headline3(this.text, {super.key}) : style = AppTextStyles.headline3;
  const CustomText2.normal(this.text, {super.key}) : style = AppTextStyles.normal;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}


class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color color;

  const CustomText.headline3({super.key, this.color = Colors.white, required this.text, this.style = AppTextStyles.headline3 });


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(color: color),
    );
  }
}