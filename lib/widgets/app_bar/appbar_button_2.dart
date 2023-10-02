import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';

// ignore: must_be_immutable
class AppbarButton2 extends StatelessWidget {
  AppbarButton2({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomButton(
          height: getVerticalSize(
            10,
          ),
          width: getHorizontalSize(
            90,
          ),
          text: "5,000",
          variant: ButtonVariant.FillBlue900,
          shape: ButtonShape.CircleBorder22,
          padding: ButtonPadding.PaddingT5,
          fontStyle: ButtonFontStyle.RobotoRomanBold12White900,
          prefixWidget: Container(
            margin: getMargin(
              right: 2,
            ),
            child: Icon(Icons.currency_rupee, size: 15,color: Colors.white,)
          ),
        ),
      ),
    );
  }
}
