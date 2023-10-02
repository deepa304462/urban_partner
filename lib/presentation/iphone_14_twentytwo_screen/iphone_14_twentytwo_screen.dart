import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';

class Iphone14TwentytwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.orangeA100,
        body: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
          },
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 25,
              top: 49,
              right: 25,
              bottom: 49,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(

                  imagePath: ImageConstant.img7efs1,
                  height: getSize(
                    340,
                  ),
                  width: getSize(
                    340,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    282,
                  ),
                  margin: getMargin(
                    left: 25,
                    top: 4,
                    right: 32,
                  ),
                  child: Text(
                    "You have successfully added \nRs. 5000",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtMulishRomanBlack20,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgVector14,
                  height: getVerticalSize(
                    3,
                  ),
                  width: getHorizontalSize(
                    48,
                  ),
                  margin: getMargin(
                    top: 22,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    221,
                  ),
                  margin: getMargin(
                    top: 27,
                    bottom: 5,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Our Customer Support team will connect you S",
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: "oon.",
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
