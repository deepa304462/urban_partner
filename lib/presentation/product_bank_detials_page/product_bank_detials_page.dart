import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

class ProductBankDetialsPage extends StatefulWidget {
  @override
  _ProductBankDetialsPageState createState() => _ProductBankDetialsPageState();
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.documentsTabContainerScreen);
  }
}

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class _ProductBankDetialsPageState extends State<ProductBankDetialsPage>
    with AutomaticKeepAliveClientMixin<ProductBankDetialsPage> {
  TextEditingController hiddenatmnoController = TextEditingController();

  TextEditingController mobilenoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 16, top: 11, right: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 9),
                                          child: Text("PAN Card No.",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterMedium14)),
                                      Padding(
                                          padding: getPadding(bottom: 8),
                                          child: Text("*",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMulishRomanMedium14Red900))
                                    ]),
                                Container(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(358),
                                    margin: getMargin(top: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(8)),
                                        border: Border.all(
                                            color: ColorConstant.blueGray100,
                                            width: getHorizontalSize(1)))),
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text("Bank Name",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14)),
                                          Padding(
                                              padding: getPadding(bottom: 7),
                                              child: Text("*",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanMedium14Red900))
                                        ])),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        width: getHorizontalSize(358),
                                        margin: getMargin(top: 8),
                                        padding: getPadding(
                                            left: 13,
                                            top: 17,
                                            right: 13,
                                            bottom: 17),
                                        decoration: AppDecoration
                                            .outlineBluegray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVectorBlack9005x10,
                                                  height: getVerticalSize(5),
                                                  width: getHorizontalSize(10),
                                                  margin: getMargin(top: 1))
                                            ]))),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 7),
                                              child: Text("Branch Name",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, bottom: 6),
                                              child: Text("*",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanMedium14Red900))
                                        ])),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        width: getHorizontalSize(358),
                                        margin: getMargin(top: 8),
                                        padding: getPadding(
                                            left: 13,
                                            top: 17,
                                            right: 13,
                                            bottom: 17),
                                        decoration: AppDecoration
                                            .outlineBluegray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVectorBlack9005x10,
                                                  height: getVerticalSize(5),
                                                  width: getHorizontalSize(10),
                                                  margin: getMargin(top: 1))
                                            ]))),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("Account Holder Name",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterMedium14)),
                                      Padding(
                                          padding:
                                              getPadding(left: 4, bottom: 3),
                                          child: Text("*",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMulishRomanMedium14Red900))
                                    ])),
                                Container(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(358),
                                    margin: getMargin(top: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(8)),
                                        border: Border.all(
                                            color: ColorConstant.blueGray100,
                                            width: getHorizontalSize(1)))),
                                Padding(
                                    padding: getPadding(top: 18),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 7),
                                              child: Text("Account Number",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 1, bottom: 6),
                                              child: Text("*",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanMedium14Red900))
                                        ])),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: hiddenatmnoController,
                                    hintText: "****************",
                                    margin: getMargin(top: 8),
                                    fontStyle: TextFormFieldFontStyle
                                        .MulishRomanMedium14Black900),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 7),
                                              child: Text(
                                                  "Confirm Account Number",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, bottom: 6),
                                              child: Text("*",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanMedium14Red900))
                                        ])),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: mobilenoController,
                                    hintText: "1234566789",
                                    margin: getMargin(top: 9),
                                    fontStyle: TextFormFieldFontStyle
                                        .MulishRomanMedium14Black900,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.phone),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("IFSC Code",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14)),
                                          Padding(
                                              padding: getPadding(bottom: 8),
                                              child: Text("*",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanMedium14Red900))
                                        ])),
                                Container(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(358),
                                    margin: getMargin(top: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(8)),
                                        border: Border.all(
                                            color: ColorConstant.blueGray100,
                                            width: getHorizontalSize(1)))),
                                CustomButton(
                                    text: "Save",
                                    margin:
                                        getMargin(left: 30, top: 64, right: 30),
                                    shape: ButtonShape.RoundedBorder9,
                                    padding: ButtonPadding.PaddingAll15,
                                    fontStyle:
                                        ButtonFontStyle.MulishRomanMedium14,
                                    onTap: () {
                                      // onTapSave(context);
                                    },
                                    alignment: Alignment.center)
                              ]))
                    ])))));
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.documentsTabContainerScreen);
  }
}
