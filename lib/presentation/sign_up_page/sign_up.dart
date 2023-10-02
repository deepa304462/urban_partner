import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  TextEditingController rectangle3405Controller = TextEditingController();

  TextEditingController rectangle3407Controller = TextEditingController();

  TextEditingController rectangle3408Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(169),
                              width: getHorizontalSize(278),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomIconButton(
                                        height: 58,
                                        width: 58,
                                        alignment: Alignment.topLeft,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgGroup295)),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            width: getHorizontalSize(263),
                                            child: Text("Create your Account",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMulishRomanBlack4512)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 34),
                              child: Text("Full Name:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3405Controller,
                          margin: getMargin(left: 16, top: 8, right: 16)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24),
                              child: Text("Email ID:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3407Controller,
                          margin: getMargin(left: 16, top: 8, right: 16)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 20),
                              child: Text("Mobile No:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3408Controller,
                          margin: getMargin(left: 16, top: 8, right: 16),
                          textInputAction: TextInputAction.done),
                      Spacer(),
                      CustomButton(
                          width: getHorizontalSize(201),
                          text: "Send OTP",

                          shape: ButtonShape.RoundedBorder26,
                          padding: ButtonPadding.PaddingAll15,
                          fontStyle: ButtonFontStyle.InterSemiBold24,
                          onTap: () {
                            onTapSendotp(context);
                          }),
                      Padding(
                          padding: getPadding(top: 47, bottom: 128),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Already have an account? ",
                                    style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize:
                                            getFontSize(19.91122055053711),
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "Log in",
                                    style: TextStyle(
                                        color: ColorConstant.blue900,
                                        fontSize:
                                            getFontSize(19.91122055053711),
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w900))
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  onTapSendotp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpScreen);
  }
}
