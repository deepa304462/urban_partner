import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class Frame37377Screen extends StatelessWidget {
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
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(22),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: ColorConstant.yellow700,
                              borderRadius: BorderRadius.only(
                                  topLeft:
                                      Radius.circular(getHorizontalSize(20)),
                                  topRight:
                                      Radius.circular(getHorizontalSize(20))))),
                      Padding(
                          padding: getPadding(left: 30, top: 34),
                          child: Text("Total Amount",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium13Black900)),
                      Padding(
                          padding: getPadding(left: 30, top: 4),
                          child: Text("₹5000",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold18)),
                      CustomButton(
                          text: "Cash Payment",
                          margin: getMargin(left: 30, top: 33, right: 30),
                          shape: ButtonShape.RoundedBorder9,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.PoppinsBold1823,
                          alignment: Alignment.center),
                      CustomButton(
                          height: getVerticalSize(46),
                          text: "Online Payment",
                          margin: getMargin(
                              left: 30, top: 13, right: 30, bottom: 30),
                          variant: ButtonVariant.OutlineBlue900,
                          shape: ButtonShape.RoundedBorder9,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.PoppinsBold1823Blue900,
                          onTap: () {
                            onTapOnlinepayment(context);
                          },
                          alignment: Alignment.center),
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

  onTapOnlinepayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37555Screen);
  }
}
