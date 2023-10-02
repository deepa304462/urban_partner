import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class Frame9919Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Center(
              child: Container(
                  width: getHorizontalSize(307),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgLocationBlue900,
                            height: getVerticalSize(37),
                            width: getHorizontalSize(33),
                            margin: getMargin(top: 20)),
                        Container(
                            width: getHorizontalSize(216),
                            margin: getMargin(left: 42, top: 15, right: 47),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Allow ",
                                      style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(16),
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700)),
                                  TextSpan(
                                      text:
                                          "RAC Repair to access this device’s approximate location?",
                                      style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(16),
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w900))
                                ]),
                                textAlign: TextAlign.center)),
                        Padding(
                            padding: getPadding(top: 3),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.black9007f)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    getPadding(left: 15, top: 10, right: 30),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgXvqyg4,
                                      height: getVerticalSize(118),
                                      width: getHorizontalSize(119),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(57))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgXvqyg3,
                                      height: getSize(118),
                                      width: getSize(118),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(59)),
                                      margin: getMargin(left: 25))
                                ]))),
                        Padding(
                            padding: getPadding(left: 47, top: 19, right: 33),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("Precise",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium16)),
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("Approximately",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium16))
                                ])),
                        CustomButton(
                            height: getVerticalSize(67),
                            text: "WHILE USING THE APP",
                            margin: getMargin(top: 16),
                            variant: ButtonVariant.OutlineBlack9007f,
                            shape: ButtonShape.Square,
                            padding: ButtonPadding.PaddingAll23,
                            fontStyle: ButtonFontStyle.MulishRomanExtraBold16,
                            onTap: () {
                              onTapWhileusingthe(context);
                            }),
                        CustomButton(
                            height: getVerticalSize(67),
                            text: "ONLY THIS TIME",
                            variant: ButtonVariant.OutlineBlack9007f,
                            shape: ButtonShape.Square,
                            padding: ButtonPadding.PaddingAll23,
                            fontStyle: ButtonFontStyle.MulishRomanExtraBold16),
                       CustomButton(
                           height: getVerticalSize(67),
                           text: "DON’T ALLOW",
                           margin: getMargin(bottom: 9),
                           variant: ButtonVariant.OutlineBlack9007f_1,
                           shape: ButtonShape.Square,
                           padding: ButtonPadding.PaddingAll23,
                           fontStyle: ButtonFontStyle.MulishRomanExtraBold16,
                           onTap: () {
                            onTapDontallow(context);
                           })
                      ])),


            ),

        )
    );
  }

  onTapWhileusingthe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectCityScreen);
  }

  onTapDontallow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectCityScreen);
  }
}
