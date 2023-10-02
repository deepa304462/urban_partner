import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyConstant {
  static const Color buttonDarkColor = Color(0xFF094DB3);
  static const Color buttonLightColor = Color(0XFF09B3B3);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;
  static const Color primary = Color(0XFF094DB3);
  static const Color red = Color.fromARGB(255, 129, 5, 5);
  static const Color red11 = Color.fromRGBO(182, 11, 11, 1);
  static const Color red54 = Color.fromRGBO(239, 54, 54, 1);
  static const Color red87 = Color.fromRGBO(247, 109, 87, 1);
  static const Color green = Colors.green;
  static const Color blue179 = Color.fromRGBO(9, 77, 179, 1);
  static const Color green0 = Color.fromRGBO(48, 108, 0, 1);
  static const Color green71 = Color.fromRGBO(0, 172, 71, 1);
  static const Color green7 = Color.fromRGBO(0, 175, 7, 1);

  static const Color green179 = Color.fromRGBO(9, 179, 179, 0.47);
  static const Color black29 = Color.fromRGBO(29, 29, 29, 1);
  static const Color black72 = Color.fromRGBO(72, 72, 72, 1);
  static const Color black10 = Color.fromRGBO(9, 11, 10, 1);
  static const Color grey97 = Color.fromRGBO(97, 97, 97, 1);
  static const Color white255 = Color.fromRGBO(255, 255, 255, 1);
  static const Color white244 = Color.fromRGBO(244, 244, 244, 1);
  static const Color white224 = Color.fromRGBO(224, 224, 224, 1);
  static const Color grey217 = Color.fromRGBO(217, 217, 217, 1);
  static const Color grey223 = Color.fromRGBO(223, 223, 223, 1);
  static const Color grey80 = Color.fromRGBO(80, 80, 80, 1);
  static const Color yellow43 = Color.fromRGBO(240, 184, 43, 1);
  static const Color orange43 = Color.fromRGBO(225, 118, 40, 1);
  static const Color orange112 = Color.fromRGBO(251, 211, 112, 1);
  static const Color yellow0 = Color.fromRGBO(253, 181, 0, 1);
  static const Color yellow253 = Color.fromRGBO(233, 253, 0, 1);
  static const Color green137 = Color.fromRGBO(10, 209, 137, 1);
  static const Color green105 = Color.fromRGBO(30, 211, 105, 1);
  static const Color grey93 = Color.fromRGBO(93, 93, 93, 1);
  static const Color grey247 = Color.fromRGBO(247, 247, 247, 1);

  static const Color yellow = Colors.orangeAccent;

  //defaultPadding
  static const defaultPadding = 16.0;

  //TextStyle
  static const TextStyle sectionTitle =
  TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black);

  //onBoarding Style
  static const TextStyle onBoardingStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
//darkColorText
  static const TextStyle darkText = TextStyle(
      color: MyConstant.primary, fontWeight: FontWeight.w500, fontSize: 16);

  //TitleStyle
  static const TextStyle titleStyle =
  TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17);

  //buttonTextStyle
  static const TextStyle buttonTextStyle =
  TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16);

  //greyText Style
  static const TextStyle greyTextStyle =
  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16);

  //Normal Style
  static const TextStyle normalText =
  TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14);

  //strike out text
  static const TextStyle strikeoutText = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      decoration: TextDecoration.lineThrough);

  //NavigateTextStyle
  static const TextStyle navigatingText = TextStyle(
    color: buttonLightColor,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
//white Text
  static const TextStyle whiteText =
  TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400);

//cancel Text
  static const TextStyle cancelText = TextStyle(
      color: MyConstant.red, fontSize: 16, fontWeight: FontWeight.w500);

//confirm Text

//cancel Text
  static const TextStyle greenText = TextStyle(
      color: MyConstant.green, fontSize: 16, fontWeight: FontWeight.w500);

  static String? textStylePoppins = GoogleFonts.poppins().fontFamily;
  static String? textStyleMulish = GoogleFonts.mulish().fontFamily;
  static String? textStyleRoboto = GoogleFonts.roboto().fontFamily;
  static String? textStyleInter = GoogleFonts.inter().fontFamily;
  static String? textStyleNunitoSans = GoogleFonts.nunitoSans().fontFamily;
}
