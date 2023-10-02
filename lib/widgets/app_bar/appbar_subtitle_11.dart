import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle11 extends StatelessWidget {
  AppbarSubtitle11({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.orange,
              size: 12,
            ),
            SizedBox(width: 1), // Add some spacing between the icon and the text
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRomanBold10.copyWith(
                color: ColorConstant.black900,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 12
              ),
            ),
          ],
        ),
      ),
    );
  }
}
