import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

// ignore: must_be_immutable
class AddMoneyItemWidget extends StatelessWidget {
  AddMoneyItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgDisc3,
          height: getSize(
            25,
          ),
          width: getSize(
            25,
          ),
          margin: getMargin(
            top: 8,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 13,
            top: 7,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular1668,
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgBhimupi1,
          height: getSize(
            33,
          ),
          width: getSize(
            33,
          ),
        ),
      ],
    );
  }
}
