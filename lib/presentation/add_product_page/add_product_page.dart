import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/product_bank_detials_page/product_bank_detials_page.dart';
import 'package:urban_partner/presentation/shopping_panel_screen/shopping_panel_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage>
    with AutomaticKeepAliveClientMixin<AddProductPage> {
  TextEditingController rectangle4447Controller = TextEditingController();

  TextEditingController rectangle4448Controller = TextEditingController();

  TextEditingController rectangle4449Controller = TextEditingController();

  TextEditingController rectangle4451Controller = TextEditingController();

  TextEditingController rectangle4452Controller = TextEditingController();

  TextEditingController rectangle4453Controller = TextEditingController();

  TextEditingController rectangle4454Controller = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 10,
                  right: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Text(
                            "Company Name",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 5,
                          ),
                          child: Text(
                            "*",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMulishRomanMedium14Red900,
                          ),
                        ),
                      ],
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: rectangle4447Controller,
                      margin: getMargin(
                        left: 1,
                        top: 6,
                      ),
                      variant: TextFormFieldVariant.OutlineGray7005a,
                      shape: TextFormFieldShape.RoundedBorder4,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 28,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "Owner Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 3,
                              bottom: 4,
                            ),
                            child: Text(
                              "*",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Red900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: rectangle4448Controller,
                      margin: getMargin(
                        left: 1,
                        top: 7,
                      ),
                      variant: TextFormFieldVariant.OutlineGray7005a,
                      shape: TextFormFieldShape.RoundedBorder4,
                    ),
                    Container(
                      height: getVerticalSize(
                        21,
                      ),
                      width: getHorizontalSize(
                        118,
                      ),
                      margin: getMargin(
                        left: 1,
                        top: 28,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "*",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Red900,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Owner Mobile no.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: rectangle4449Controller,
                      margin: getMargin(
                        left: 1,
                        top: 8,
                      ),
                      shape: TextFormFieldShape.RoundedBorder4,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 25,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: Text(
                              "Email ID",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                              bottom: 6,
                            ),
                            child: Text(
                              "*",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Red900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: rectangle4451Controller,
                      margin: getMargin(
                        left: 1,
                        top: 8,
                      ),
                      variant: TextFormFieldVariant.OutlineGray7005a,
                      shape: TextFormFieldShape.RoundedBorder4,
                    ),
                    Container(
                      height: getVerticalSize(
                        26,
                      ),
                      width: getHorizontalSize(
                        148,
                      ),
                      margin: getMargin(
                        left: 1,
                        top: 25,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "*",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Red900,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Customer Support No.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: rectangle4452Controller,
                      margin: getMargin(
                        left: 1,
                        top: 6,
                      ),
                      variant: TextFormFieldVariant.OutlineGray7005a,
                      shape: TextFormFieldShape.RoundedBorder4,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 34,
                      ),
                      child: Text(
                        "Company Reg. No.",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium14,
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: rectangle4453Controller,
                      margin: getMargin(
                        left: 1,
                        top: 6,
                      ),
                      variant: TextFormFieldVariant.OutlineGray7005a,
                      shape: TextFormFieldShape.RoundedBorder4,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 26,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: Text(
                              "GST No.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              bottom: 6,
                            ),
                            child: Text(
                              "*",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Red900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: rectangle4454Controller,
                      margin: getMargin(
                        left: 1,
                        top: 7,
                      ),
                      variant: TextFormFieldVariant.OutlineGray7005a,
                      shape: TextFormFieldShape.RoundedBorder4,
                      textInputAction: TextInputAction.done,
                    ),
                    Container(
                      height: getVerticalSize(
                        24,
                      ),
                      width: getHorizontalSize(
                        61,
                      ),
                      margin: getMargin(
                        left: 1,
                        top: 26,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "*",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Red900,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Address",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        82,
                      ),
                      width: getHorizontalSize(
                        358,
                      ),
                      margin: getMargin(
                        left: 1,
                        top: 7,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            4,
                          ),
                        ),
                        border: Border.all(
                          color: ColorConstant.gray7005a,
                          width: getHorizontalSize(
                            1,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        25,
                      ),
                      width: getHorizontalSize(
                        115,
                      ),
                      margin: getMargin(
                        left: 1,
                        top: 26,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "*",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanMedium14Red900,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Type of Products",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      child: Container(
                        width: getHorizontalSize(
                          358,
                        ),
                        margin: getMargin(
                          left: 1,
                          top: 5,
                        ),
                        padding: getPadding(
                          left: 15,
                          top: 13,
                          right: 15,
                          bottom: 13,
                        ),
                        decoration: AppDecoration.outlineGray7005a.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
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
                    Padding(
                      padding: getPadding(
                        left: 34,
                        top: 35,
                        right: 64,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCheckmarkLightGreen900,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              top: 1,
                              bottom: 15,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: getHorizontalSize(
                                232,
                              ),
                              margin: getMargin(
                                left: 5,
                              ),
                              child: Text(
                                "I accept all terms & conditions of \nRAC Repair",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtMulishRomanMedium16Red900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      // onTap: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductBankDetialsPage()));
                      // },
                      text: "Save",
                      margin: getMargin(
                        left: 31,
                        top: 6,
                        right: 30,
                      ),
                      shape: ButtonShape.RoundedBorder9,
                      padding: ButtonPadding.PaddingAll15,
                      fontStyle: ButtonFontStyle.MulishRomanMedium14,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
