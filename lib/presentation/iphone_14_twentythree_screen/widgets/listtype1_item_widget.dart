import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class Listtype1ItemWidget extends StatelessWidget {
  final String transactionType;

  Listtype1ItemWidget({required this.transactionType});

  @override
  Widget build(BuildContext context) {
    Color transactionColor;
    Color amountColor;
    String transactionText;
    String amountText;

    if (transactionType == "refund") {
      transactionColor = Colors.black;
      amountColor = Colors.yellow;
      transactionText = "Returned";
      amountText = "+5000";
    } else if (transactionType == "withdrawal") {
      transactionColor = Colors.black;
      amountColor = Colors.red;
      transactionText = "Withdraw";
      amountText = "-5000";
    } else if (transactionType == "paid") {
      transactionColor = Colors.black;
      amountColor = Colors.green;
      transactionText = "Credit";
      amountText = "-5000";
    } else {
      transactionColor = Colors.black;
      amountColor = Colors.black;
      transactionText = "";
      amountText = "+5000";
    }

    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 10,
          top: 15,
          right: 10,
          bottom: 15,
        ),
        decoration: AppDecoration.outlineBluegray1003.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder11,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 13,
                top: 1,
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
                      transactionText,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold14.copyWith(
                        color: transactionColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      amountText,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16Lightgreen900.copyWith(
                        color: amountColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 13,
                top: 4,
              ),
              child: Text(
                "DD/MM/YYYY",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular14,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 13,
                top: 8,
              ),
              child: Text(
                "12 : 15 PM",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
