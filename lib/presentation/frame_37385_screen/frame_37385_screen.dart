import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class Frame37385Screen extends StatelessWidget {
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
                    left: 106,
                    top: 17,
                    right: 106,
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
                        imagePath: ImageConstant.img372107370crossmark400px,
                        height: getSize(
                          106,
                        ),
                        width: getSize(
                          106,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 30,
                          bottom: 64,
                        ),
                        child: Text(
                          "Customer Rejected",
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
