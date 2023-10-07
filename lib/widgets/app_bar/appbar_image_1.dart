import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

// ignore: must_be_immutable
class AppbarImage1 extends StatefulWidget {
  AppbarImage1(
      {required this.height,
      required this.width,
      this.imagePath,
      this.svgPath,
      this.margin,
      this.onTap});

  double height;

  double width;

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  State<AppbarImage1> createState() => _AppbarImage1State();
}

class _AppbarImage1State extends State<AppbarImage1> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.circleBorder37,
      onTap: () {
        widget.onTap?.call();
      },
      child: Padding(
        padding: widget.margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: widget.svgPath,
          imagePath: widget.imagePath,
          height: widget.height,
          width: widget.width,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(
              37,
            ),
          ),
        ),
      ),
    );
  }
}
