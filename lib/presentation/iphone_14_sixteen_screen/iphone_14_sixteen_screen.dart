import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

class Iphone14SixteenScreen extends StatelessWidget {
  TextEditingController rectangle3405Controller = TextEditingController();

  TextEditingController rectangle3406Controller = TextEditingController();

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
                height: getVerticalSize(
                  169,
                ),
                width: getHorizontalSize(
                  278,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomIconButton(
                      height: 58,
                      width: 58,
                      alignment: Alignment.topLeft,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgGroup295,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: getHorizontalSize(
                          263,
                        ),
                        child: Text(
                          "Create your Account",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanBlack4512,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 33,
                ),
                child: Text(
                  "Select your profession:",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium16,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    40,
                  ),
                  width: getHorizontalSize(
                    358,
                  ),
                  margin: getMargin(
                    top: 6,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgVectorBlack9005x10,
                        height: getVerticalSize(
                          5,
                        ),
                        width: getHorizontalSize(
                          10,
                        ),
                        alignment: Alignment.centerRight,
                        margin: getMargin(
                          right: 13,
                        ),
                      ),
                      CustomTextFormField(
                        width: getHorizontalSize(
                          358,
                        ),
                        focusNode: FocusNode(),
                        controller: rectangle3405Controller,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 19,
                ),
                child: Text(
                  "Year of experience:",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium16,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    40,
                  ),
                  width: getHorizontalSize(
                    358,
                  ),
                  margin: getMargin(
                    top: 6,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgVectorBlack9005x10,
                        height: getVerticalSize(
                          5,
                        ),
                        width: getHorizontalSize(
                          10,
                        ),
                        alignment: Alignment.centerRight,
                        margin: getMargin(
                          right: 13,
                        ),
                      ),
                      CustomTextFormField(
                        width: getHorizontalSize(
                          358,
                        ),
                        focusNode: FocusNode(),
                        controller: rectangle3406Controller,
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 18,
                ),
                child: Text(
                  "Radius of work",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium16,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(
                    358,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 7,
                    right: 16,
                  ),
                  padding: getPadding(
                    left: 13,
                    top: 17,
                    right: 13,
                    bottom: 17,
                  ),
                  decoration: AppDecoration.outlineBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgVectorBlack9005x10,
                        height: getVerticalSize(
                          5,
                        ),
                        width: getHorizontalSize(
                          10,
                        ),
                        margin: getMargin(
                          top: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                width: getHorizontalSize(
                  192,
                ),
                text: "Continue",
                margin: getMargin(
                  bottom: 198,
                ),
                shape: ButtonShape.RoundedBorder26,
                padding: ButtonPadding.PaddingAll11,
                fontStyle: ButtonFontStyle.InterSemiBold24,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
