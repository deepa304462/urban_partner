import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class Frame37378Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 83,
                    top: 17,
                    right: 83,
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
                      Container(
                        width: getHorizontalSize(
                          219,
                        ),
                        margin: getMargin(
                          top: 15,
                          bottom: 7,
                        ),
                        child: Text(
                          "You have successfully \ncompleted your job",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtInterSemiBold20,
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
