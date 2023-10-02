import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: getVerticalSize(
            756,
          ),
          width: getHorizontalSize(
            360,
          ),
        ),
      ),
    );
  }
}
