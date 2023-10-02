import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class WorkProfileOneScreen extends StatelessWidget {
  TextEditingController rectangle3405Controller = TextEditingController();

  TextEditingController rectangle3412Controller = TextEditingController();

  TextEditingController rectangle3413Controller = TextEditingController();

  TextEditingController rectangle3414Controller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(169),
                          width: getHorizontalSize(274),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomIconButton(
                                    height: 58,
                                    width: 58,
                                    alignment: Alignment.topLeft,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgGroup295)),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        width: getHorizontalSize(258),
                                        child: Text("Set uo your\nDetails",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMulishRomanBlack4512)))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 23, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 6),
                                        child: Text("Work Profile",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular16)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtDocuments(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(bottom: 5),
                                            child: Text("Documents",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16))),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Bank Details",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterSemiBold16),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: SizedBox(
                                                  width: getHorizontalSize(96),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(2),
                                                      thickness:
                                                          getVerticalSize(2),
                                                      color: ColorConstant
                                                          .blue900)))
                                        ])
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.blueGray100,
                              indent: getHorizontalSize(16),
                              endIndent: getHorizontalSize(16))),
                      Padding(
                          padding: getPadding(left: 16, top: 22),
                          child: Text("Save your Bank Details for refer bonus",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      Padding(
                          padding: getPadding(left: 16, top: 18),
                          child: Text("Bank Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3405Controller,
                          margin: getMargin(left: 16, top: 7, right: 16),
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 16, top: 19),
                          child: Text("Branch Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(358),
                              margin: getMargin(left: 16, top: 7, right: 16),
                              padding: getPadding(
                                  left: 13, top: 17, right: 13, bottom: 17),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgVectorBlack9005x10,
                                        height: getVerticalSize(5),
                                        width: getHorizontalSize(10),
                                        margin: getMargin(top: 1))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 16, top: 15),
                          child: Text("Account Number",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3412Controller,
                          margin: getMargin(left: 16, top: 7, right: 16),
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 16, top: 19),
                          child: Text("Confirm Account Number",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3413Controller,
                          margin: getMargin(left: 16, top: 8, right: 16),
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 16, top: 19),
                          child: Text("IFSC Code",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3414Controller,
                          margin:
                              getMargin(left: 16, top: 7, right: 16, bottom: 5),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center)
                    ])),
            bottomNavigationBar: CustomButton(
                width: getHorizontalSize(195),
                text: "Save",
                margin: getMargin(left: 98, right: 97, bottom: 58),
                shape: ButtonShape.RoundedBorder26,
                padding: ButtonPadding.PaddingAll11,
                fontStyle: ButtonFontStyle.InterSemiBold24)));
  }

  onTapTxtDocuments(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen);
  }
}
