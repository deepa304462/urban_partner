import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class Frame37408Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: getHorizontalSize(
            362,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 63,
                    top: 5,
                    right: 63,
                    bottom: 5,
                  ),
                  decoration: AppDecoration.fillOrangeA100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
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
                      Container(
                        width: getHorizontalSize(
                          235,
                        ),
                        margin: getMargin(
                          top: 7,
                        ),
                        child: Text(
                          "Your item Successfully upload on\nRAC Repair Shop",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtMulishRomanMedium16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 51,
                          bottom: 41,
                        ),
                        child: Text(
                          "Thank You",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanBold20,
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
