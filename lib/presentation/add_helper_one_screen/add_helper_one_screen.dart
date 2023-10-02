import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class AddHelperOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                leadingWidth: 58,
                leading: AppbarIconbutton(svgPath: ImageConstant.imgGroup295,
                onTap: () {
             onTapColumnframetwo(context);
            },),

                centerTitle: true,
                title: AppbarSubtitle1(text: "My Team")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 8, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(2),
                          thickness: getVerticalSize(2),
                          color: ColorConstant.blueGray100),
                      Container(
                          margin: getMargin(left: 16, top: 25, right: 16),
                          padding: getPadding(all: 14),
                          decoration: AppDecoration.fillBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("Name:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtInterSemiBold16Black900)),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 2, right: 167),
                                child: Text("Kumar Sing",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold16Black900))
                          ])),
                      Container(
                          margin: getMargin(left: 16, top: 11, right: 16),
                          padding: getPadding(all: 14),
                          decoration: AppDecoration.fillBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("Name:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtInterSemiBold16Black900)),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 2, right: 167),
                                child: Text("Kumar Sing",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold16Black900))
                          ])),
                      Spacer(),
                      CustomButton(
                          width: getHorizontalSize(156),
                          text: "Add new helper".toUpperCase(),
                          margin: getMargin(bottom: 435),
                          shape: ButtonShape.RoundedBorder9,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterSemiBold14,
                          onTap: () {
                            onTapAddnewhelper(context);
                          })
                    ]))));
  }

  onTapAddnewhelper(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addHelperScreen);
  }
  onTapColumnframetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

}
