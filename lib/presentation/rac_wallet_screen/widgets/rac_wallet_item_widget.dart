import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

// ignore: must_be_immutable
class RacWalletItemWidget extends StatelessWidget {
  RacWalletItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 10,
          top: 17,
          right: 10,
          bottom: 17,
        ),
        decoration: AppDecoration.outlineBluegray1003.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder11,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 8,
                    ),
                    child: Text(
                      "Credited",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold14,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "+5000",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16Teal80001,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 13,
                top: 4,
                bottom: 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "DD/MM/YYYY",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular14,
                  ),
                  Text(
                    "12 : 15 PM",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
