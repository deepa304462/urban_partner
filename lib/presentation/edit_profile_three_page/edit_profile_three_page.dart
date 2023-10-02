import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

import '../../widgets/custom_icon_button.dart';

class EditProfileThreePage extends StatefulWidget {
  @override
  _EditProfileThreePageState createState() => _EditProfileThreePageState();

  onTapStackmaterialsy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37386Screen);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen);
  }
}

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class _EditProfileThreePageState extends State<EditProfileThreePage>
    with AutomaticKeepAliveClientMixin<EditProfileThreePage> {
  TextEditingController rectangle3405Controller = TextEditingController();

  TextEditingController rectangle3411Controller = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 16, top: 22, right: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("PAN Card",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium14),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: rectangle3405Controller,
                                    margin: getMargin(top: 8)),
                                Padding(
                                    padding: getPadding(top: 8, right: 52),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: ColorConstant
                                                          .blueGray100,
                                                      width:
                                                          getHorizontalSize(1)),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
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
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle4384,
                                                        height:
                                                            getVerticalSize(77),
                                                        width:
                                                            getHorizontalSize(
                                                                132),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    2)),
                                                        alignment: Alignment
                                                            .centerLeft)
                                                  ]))),
                                          GestureDetector(
                                              onTap: () {
                                                // onTapStackmaterialsy(context);
                                              },
                                              child: Container(
                                                  height: getVerticalSize(34),
                                                  width: getHorizontalSize(44),
                                                  margin: getMargin(
                                                      top: 29, bottom: 30),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                          onTap: (){
                                                            btm();
                                                          },
                                                            svgPath: ImageConstant
                                                                .imgMaterialsymbolsedit,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            alignment: Alignment
                                                                .topRight),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Text("Edit ",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMulishRomanMedium14
                                                                    .copyWith(
                                                                        decoration:
                                                                            TextDecoration.underline)))
                                                      ])))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 22),
                                    child: Text("Aadhar  Card",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: rectangle3411Controller,
                                    margin: getMargin(top: 8),
                                    textInputAction: TextInputAction.done),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Text("Front Side",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                Padding(
                                    padding: getPadding(top: 7, right: 52),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: ColorConstant
                                                          .blueGray100,
                                                      width:
                                                          getHorizontalSize(1)),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
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
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle4385,
                                                        height:
                                                            getVerticalSize(77),
                                                        width:
                                                            getHorizontalSize(
                                                                132),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    2)),
                                                        alignment: Alignment
                                                            .bottomLeft)
                                                  ]))),
                                          Container(
                                              height: getVerticalSize(34),
                                              width: getHorizontalSize(44),
                                              margin: getMargin(
                                                  top: 26, bottom: 33),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    CustomImageView(
                                                      onTap: (){
                                                        btm();
                                                      },
                                                        svgPath: ImageConstant
                                                            .imgMaterialsymbolsedit,
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        alignment:
                                                            Alignment.topRight),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Text("Edit ",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMulishRomanMedium14
                                                                .copyWith(
                                                                    decoration:
                                                                        TextDecoration
                                                                            .underline)))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Text("Back Side",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                Padding(
                                    padding: getPadding(top: 7, right: 52),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: ColorConstant
                                                          .blueGray100,
                                                      width:
                                                          getHorizontalSize(1)),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
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
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgDummyaadharca,
                                                        height:
                                                            getVerticalSize(77),
                                                        width:
                                                            getHorizontalSize(
                                                                132),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    2)),
                                                        alignment: Alignment
                                                            .centerLeft)
                                                  ]))),
                                          Container(
                                              height: getVerticalSize(34),
                                              width: getHorizontalSize(44),
                                              margin: getMargin(
                                                  top: 24, bottom: 35),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    CustomImageView(
                                                      onTap: (){
                                                        btm();
                                                      },
                                                        svgPath: ImageConstant
                                                            .imgMaterialsymbolsedit,
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        alignment:
                                                            Alignment.topRight),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Text("Edit ",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMulishRomanMedium14
                                                                .copyWith(
                                                                    decoration:
                                                                        TextDecoration
                                                                            .underline)))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 29),
                                    child: Text(
                                        "Select other document (optional)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        width: getHorizontalSize(358),
                                        margin: getMargin(top: 7),
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
                                CustomButton(
                                    width: getHorizontalSize(195),
                                    text: "Save",
                                    margin: getMargin(top: 52),
                                    shape: ButtonShape.RoundedBorder26,
                                    padding: ButtonPadding.PaddingAll11,
                                    fontStyle: ButtonFontStyle.InterSemiBold24,
                                    onTap: () {
                                      onTapSave(context);
                                    },
                                    alignment: Alignment.center)
                              ]))
                    ])))));
  }

  onTapStackmaterialsy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37386Screen);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen);
  }
  Future<void> btm(){
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 24,
              top: 26,
              right: 24,
              bottom: 26,
            ),
            color: ColorConstant.blue900,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Upload Document",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium20,
                ),
                Text(
                  "You can upload .jpef, .png, .pdf file and max size be 500kb",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsLight12,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 38,
                      top: 19,
                      right: 38,
                      bottom: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 64,
                                width: 64,
                                shape: IconButtonShape.CircleBorder32,
                                child: CustomImageView(
                                  svgPath:
                                  ImageConstant.imgMaterialsymbolsphotocamera,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                ),
                                child: Text(
                                  "Camera",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 33,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 64,
                                width: 64,
                                margin: getMargin(
                                  left: 34,
                                ),
                                shape: IconButtonShape.CircleBorder32,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgMaterialsymbolBlue900,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "Browse Gallery",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
