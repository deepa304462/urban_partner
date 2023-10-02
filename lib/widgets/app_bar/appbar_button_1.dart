import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';

// ignore: must_be_immutable
class AppbarButton1 extends StatelessWidget {
  AppbarButton1({this.margin, this.onTap});

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
            26,
          ),
          width: getHorizontalSize(
            90,
          ),
          text: "10 Leads",
          variant: ButtonVariant.FillTeal800,
          shape: ButtonShape.CircleBorder22,
          fontStyle: ButtonFontStyle.RobotoRomanBold12White900,
        ),
      ),
    );
  }
}
