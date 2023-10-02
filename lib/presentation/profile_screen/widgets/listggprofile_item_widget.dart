import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

// ignore: must_be_immutable
class ListggprofileItemWidget extends StatelessWidget {
  ListggprofileItemWidget(
      {this.onTapTxtMyprofile, this.onTapTxtNameemailcontac});

  VoidCallback? onTapTxtMyprofile;

  VoidCallback? onTapTxtNameemailcontac;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgGgprofile,
          height: getSize(
            32,
          ),
          width: getSize(
            32,
          ),
          margin: getMargin(
            top: 3,
            bottom: 9,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 26,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  onTapTxtMyprofile?.call();
                },
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium16WhiteA700,
                ),
              ),
              GestureDetector(
                onTap: () {
                  onTapTxtNameemailcontac?.call();
                },
                child: Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "Name, Email, contact number.....",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
