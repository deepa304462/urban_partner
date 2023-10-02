import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle7 extends StatelessWidget {
  AppbarSubtitle7({required this.text, this.margin, this.onTap});

  String text;

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
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtRobotoRomanBold12.copyWith(
            color: ColorConstant.black900,
                fontSize: 12,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}
