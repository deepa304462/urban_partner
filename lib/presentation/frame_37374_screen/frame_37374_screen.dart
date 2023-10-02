import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Frame37374Screen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(22),
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.yellow700,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        getHorizontalSize(20)),
                                                    topRight: Radius.circular(
                                                        getHorizontalSize(
                                                            20))))),
                                        Padding(
                                            padding:
                                                getPadding(left: 16, top: 14),
                                            child: Text("Add New Service",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterBold14)),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            controller: nameController,
                                            hintText: "Service Name",
                                            margin: getMargin(
                                                left: 16, top: 19, right: 16),
                                            shape: TextFormFieldShape
                                                .CircleBorder22,
                                            padding: TextFormFieldPadding
                                                .PaddingAll13,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterMedium14,
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(53),
                                                width: getHorizontalSize(358),
                                                margin: getMargin(top: 30),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      44),
                                                              width:
                                                                  getHorizontalSize(
                                                                      358),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              22)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blueGray100,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      47),
                                                              margin: getMargin(
                                                                  left: 15),
                                                              padding: getPadding(
                                                                  left: 9,
                                                                  top: 1,
                                                                  right: 9,
                                                                  bottom: 1),
                                                              decoration: AppDecoration
                                                                  .txtFillWhiteA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder8),
                                                              child: Text(
                                                                  "Price",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterMedium12Black900)))
                                                    ]))),
                                        CustomButton(
                                            text: "Add Service",
                                            margin: getMargin(
                                                left: 31,
                                                top: 30,
                                                right: 54,
                                                bottom: 22),
                                            shape: ButtonShape.RoundedBorder17,
                                            padding: ButtonPadding.PaddingAll15,
                                            fontStyle:
                                                ButtonFontStyle.InterBold14,
                                            onTap: () {
                                              onTapAddservice(context);
                                            })
                                      ])))
                        ])))));
  }

  onTapAddservice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.endScreen);
  }
}
