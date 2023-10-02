import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class Iphone14TwentysixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 8, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 58,
                          width: 58,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnGroup295(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgGroup295)),
                      CustomImageView(
                          imagePath: ImageConstant.imgPreviewpage01,
                          height: getVerticalSize(566),
                          width: getHorizontalSize(360),
                          radius: BorderRadius.circular(getHorizontalSize(16)),
                          margin: getMargin(top: 8)),
                      CustomButton(
                          height: getVerticalSize(34),
                          width: getHorizontalSize(99),
                          text: "Download",
                          margin: getMargin(top: 57, bottom: 5),
                          variant: ButtonVariant.FillBlue900,
                          padding: ButtonPadding.PaddingAll8,
                          fontStyle: ButtonFontStyle.MuliBold14)
                    ]))));
  }

  onTapBtnGroup295(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
