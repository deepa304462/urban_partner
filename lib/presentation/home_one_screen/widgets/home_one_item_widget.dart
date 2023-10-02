import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';

// ignore: must_be_immutable
class HomeOneItemWidget extends StatelessWidget {
  HomeOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 16,
          top: 8,
          right: 16,
          bottom: 8,
        ),
        decoration: AppDecoration.outlineBlack9003f2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder11,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                right: 77,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium13Black900,
                  ),
                  Text(
                    "Time slot",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium13Black900,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
                right: 19,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      92,
                    ),
                    child: Text(
                      "5 Window AC \nJet Service",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold14,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 17,
                    ),
                    child: Text(
                      "12-5-21 10:00AM",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 13,
                right: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium13Black900,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            "₹349",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup37548,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    margin: getMargin(
                      top: 10,
                      bottom: 3,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      113,
                    ),
                    margin: getMargin(
                      left: 2,
                      top: 5,
                    ),
                    child: Text(
                      "Model Town, Delhi\n110044",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium13Black900,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 20,
                  top: 13,
                  right: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        31,
                      ),
                      width: getHorizontalSize(
                        118,
                      ),
                      text: "Reject",
                      variant: ButtonVariant.FillRed600,
                    ),
                    CustomButton(
                      width: getHorizontalSize(
                        117,
                      ),
                      text: "Accept",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
