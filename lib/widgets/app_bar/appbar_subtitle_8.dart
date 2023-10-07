import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/register_model.dart';

// ignore: must_be_immutable
class AppbarSubtitle8 extends StatefulWidget {
  RegisterModel registerModel = RegisterModel();
  AppbarSubtitle8({required this.text, this.margin, this.onTap, required TextStyle style});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  State<AppbarSubtitle8> createState() => _AppbarSubtitle8State();
}

class _AppbarSubtitle8State extends State<AppbarSubtitle8> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
      },
      child: Padding(
        padding: widget.margin ?? EdgeInsets.zero,
        child: Text(
          widget.registerModel.data!.fullName.toString(),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtRalewayRomanSemiBold12.copyWith(
            letterSpacing: getHorizontalSize(
              0.36,
            ),
            color: ColorConstant.black900,
          ),
        ),
      ),
    );
  }
}
