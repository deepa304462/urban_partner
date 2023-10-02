import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddHelperScreen extends StatelessWidget {
  TextEditingController rectangle4447Controller = TextEditingController();

  TextEditingController rectangle4448Controller = TextEditingController();

  TextEditingController rectangle3411Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                leadingWidth: 58,
                leading: AppbarIconbutton(svgPath: ImageConstant.imgGroup295,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
                  },
                    ),
                centerTitle: true,
                title: AppbarSubtitle1(text: "My Team")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 8, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(2),
                          thickness: getVerticalSize(2),
                          color: ColorConstant.blueGray100),
                      Padding(
                          padding: getPadding(left: 16, top: 17),
                          child: Text("Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Black900)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle4447Controller,
                          margin: getMargin(left: 16, top: 6, right: 16),
                          shape: TextFormFieldShape.RoundedBorder4,
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 16, top: 32),
                          child: Text("Mobile Number",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Black900)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle4448Controller,
                          margin: getMargin(left: 16, top: 7, right: 16),
                          shape: TextFormFieldShape.RoundedBorder4,
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 16, top: 34),
                          child: Text("Upload Documents",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Black900)),
                      Padding(
                          padding: getPadding(left: 16, top: 17),
                          child: Text("Aadhar  Card",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3411Controller,
                          margin: getMargin(left: 16, top: 7, right: 16),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 16, top: 19),
                          child: Text("Front Side",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      Padding(
                          padding: getPadding(left: 16, top: 7, right: 68),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.blueGray100,
                                            width: getHorizontalSize(1)),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Container(
                                        height: getVerticalSize(93),
                                        width: getHorizontalSize(171),
                                        padding: getPadding(
                                            left: 15,
                                            top: 4,
                                            right: 15,
                                            bottom: 4),
                                        decoration: AppDecoration
                                            .outlineBluegray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle4385,
                                              height: getVerticalSize(77),
                                              width: getHorizontalSize(132),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(2)),
                                              alignment: Alignment.bottomLeft)
                                        ]))),
                                Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(44),
                                    margin: getMargin(top: 26, bottom: 32),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolsedit,
                                              height: getSize(24),
                                              width: getSize(24),
                                              alignment: Alignment.topRight),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text("Edit ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanMedium14
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline)))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 8),
                          child: Text("Back Side",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      Padding(
                          padding: getPadding(left: 16, top: 7, right: 68),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.blueGray100,
                                            width: getHorizontalSize(1)),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Container(
                                        height: getVerticalSize(93),
                                        width: getHorizontalSize(171),
                                        padding: getPadding(
                                            left: 15,
                                            top: 8,
                                            right: 15,
                                            bottom: 8),
                                        decoration: AppDecoration
                                            .outlineBluegray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgDummyaadharca,
                                              height: getVerticalSize(77),
                                              width: getHorizontalSize(132),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(2)),
                                              alignment: Alignment.centerLeft)
                                        ]))),
                                Container(
                                    height: getVerticalSize(34),
                                    width: getHorizontalSize(44),
                                    margin: getMargin(top: 24, bottom: 34),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolsedit,
                                              height: getSize(24),
                                              width: getSize(24),
                                              alignment: Alignment.topRight),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text("Edit ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanMedium14
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline)))
                                        ]))
                              ])),
                      CustomButton(
                          width: getHorizontalSize(191),
                          text: "ADD",
                          margin: getMargin(top: 39, bottom: 5),
                          shape: ButtonShape.RoundedBorder26,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterSemiBold24,
                          onTap: () {
                            onTapAdd(context);
                          },
                          alignment: Alignment.center)
                    ]))));
  }

  onTapAdd(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addHelperOneScreen);
  }
  onTapMyTeam(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addHelperOneScreen);
  }
}
