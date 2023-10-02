import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class Frame37384Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: getHorizontalSize(
            360,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 103,
                    top: 17,
                    right: 103,
                    bottom: 17,
                  ),
                  decoration: AppDecoration.fillOrangeA100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img7efs1,
                        height: getVerticalSize(
                          106,
                        ),
                        width: getHorizontalSize(
                          105,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            52,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 30,
                          bottom: 64,
                        ),
                        child: Text(
                          "Customer accepted",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium16Blue900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
