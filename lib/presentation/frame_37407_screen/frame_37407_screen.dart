import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class Frame37407Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        Container(
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
                    left: 18,
                    top: 5,
                    right: 18,
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
                      Padding(
                        padding: getPadding(
                          top: 9,
                        ),
                        child: Text(
                          "Your Request has been successfully send",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanMedium16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                          bottom: 23,
                        ),
                        child: Text(
                          "You can add your products after confirmation ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanMedium16,
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
