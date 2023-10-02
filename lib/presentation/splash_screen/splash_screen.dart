
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/onboarding_screen/onboarding_screen.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      // Navigating to the next screen after a delay of 3 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>
            OnBoardingPage()
        ),
      );
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 33,
            top: 32,
            right: 33,
            bottom: 32,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Spacer(),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: ColorConstant.black900,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder34,
                ),
                child: Container(
                  height: getVerticalSize(
                    173,
                  ),
                  width: getHorizontalSize(
                    213,
                  ),
                  padding: getPadding(
                    left: 18,
                    top: 26,
                    right: 18,
                    bottom: 26,
                  ),
                  decoration: AppDecoration.fillBlack900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder34,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgPath0WhiteA700,
                        height: getVerticalSize(
                          120,
                        ),
                        width: getHorizontalSize(
                          177,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 39,
                ),
                child: Text(
                  "Partner".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold24,
                ),
              ),
              Container(
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
                margin: getMargin(
                  top: 103,
                  bottom: 147,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGiphy11,
                  height: getSize(
                    48,
                  ),
                  width: getSize(
                    48,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}











