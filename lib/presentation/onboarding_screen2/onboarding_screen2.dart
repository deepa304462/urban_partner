import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/onboarding_screen3/onboarding_screen3.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      // Navigating to the next screen after a delay of 5 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen3()),
      );
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 15,
            top: 47,
            right: 15,
            bottom: 47,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getVerticalSize(
                        320,
                      ),
                      width: getHorizontalSize(
                        335,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: getPadding(
                                top: 4,
                                right: 5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getSize(
                                          38,
                                        ),
                                        width: getSize(
                                          38,
                                        ),
                                        margin: getMargin(
                                          bottom: 3,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.blue900,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              19,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getSize(
                                          13,
                                        ),
                                        width: getSize(
                                          13,
                                        ),
                                        margin: getMargin(
                                          left: 63,
                                          top: 12,
                                          bottom: 16,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.blue900,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              6,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15,
                                        ),
                                        margin: getMargin(
                                          left: 104,
                                          top: 3,
                                          bottom: 23,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.blue900,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              7,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getSize(
                                          26,
                                        ),
                                        width: getSize(
                                          26,
                                        ),
                                        margin: getMargin(
                                          left: 39,
                                          top: 15,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.blue900,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: getSize(
                                      7,
                                    ),
                                    width: getSize(
                                      7,
                                    ),
                                    margin: getMargin(
                                      left: 38,
                                      top: 30,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.blue900,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: getSize(
                                17,
                              ),
                              width: getSize(
                                17,
                              ),
                              margin: getMargin(
                                bottom: 88,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.blue900,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    8,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: getSize(
                                13,
                              ),
                              width: getSize(
                                13,
                              ),
                              margin: getMargin(
                                left: 4,
                                top: 132,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.blue900,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    6,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgKindpng5787274,
                            height: getSize(
                              320,
                            ),
                            width: getSize(
                              320,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 130,
                        bottom: 110,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getSize(
                              7,
                            ),
                            width: getSize(
                              7,
                            ),
                            margin: getMargin(
                              left: 1,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.blue900,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              12,
                            ),
                            width: getHorizontalSize(
                              13,
                            ),
                            margin: getMargin(
                              top: 61,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.blue900,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  6,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  338,
                ),
                margin: getMargin(
                  left: 10,
                  top: 3,
                  right: 11,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Get  professional \n training and enjoy \n experience working \n with \n",
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            32,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "RAC Repair",
                        style: TextStyle(
                          color: ColorConstant.blue900,
                          fontSize: getFontSize(
                            32,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgMenu,
                height: getVerticalSize(
                  25,
                ),
                width: getHorizontalSize(
                  77,
                ),
                margin: getMargin(
                  top: 56,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: getMargin(
            left: 165,
            right: 165,
            bottom: 39,
          ),
          color: ColorConstant.black900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Container(
            height: getVerticalSize(
              52,
            ),
            width: getHorizontalSize(
              48,
            ),
            decoration: AppDecoration.fillBlack900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder11,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgPath0,
                  height: getVerticalSize(
                    32,
                  ),
                  width: getHorizontalSize(
                    48,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
