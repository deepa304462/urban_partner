import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/aster_image_page/aster_image_page.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

import '../../widgets/custom_icon_button.dart';
import '../home_screen/dashboard_view.dart';

class WorkProfilePage extends StatefulWidget {
  @override
  _WorkProfilePageState createState() => _WorkProfilePageState();
  // onTapImgMaterialsymbols(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  // }
  //
  // onTapImgMaterialsymbols1(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  // }
  //
  // onTapImgMaterialsymbols2(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  // }
  //
  // onTapImgMaterialsymbols3(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  // }
  //
  // onTapGridicons(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame37355Screen);
  // }
}

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class _WorkProfilePageState extends State<WorkProfilePage>
    with AutomaticKeepAliveClientMixin<WorkProfilePage> {
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
                          padding: getPadding(left: 16, top: 18, right: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 98),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: getPadding(
                                                  left: 6,
                                                  top: 30,
                                                  right: 6,
                                                  bottom: 24),
                                              decoration: AppDecoration
                                                  .outlineBluegray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder82),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                82),
                                                        margin:
                                                            getMargin(top: 2),
                                                        child: Text(
                                                            "Upload your Selfie",
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtInterRegular16Black90087))
                                                  ])),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolscloudupload,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  top: 31, bottom: 38),
                                              onTap: () {
                                                // onTapImgMaterialsymbols(
                                                //     context);
                                                btm();
                                              }
                                              )
                                        ])),
                                Padding(
                                    padding: getPadding(top: 25),
                                    child: Text("PAN Card",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14.copyWith(
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: rectangle3405Controller,
                                    margin: getMargin(top: 8)),
                                Padding(
                                    padding: getPadding(top: 11, right: 98),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: getPadding(
                                                  left: 4,
                                                  top: 24,
                                                  right: 4,
                                                  bottom: 24),
                                              decoration: AppDecoration
                                                  .outlineBluegray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                125),
                                                        margin: getMargin(
                                                            bottom: 2),
                                                        child: Text(
                                                            "Upload pan card\nimage Here",
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular16Black90087))
                                                  ])),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolscloudupload,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  left: 101,
                                                  top: 28,
                                                  bottom: 41),
                                              onTap: () {
                                                // onTapImgMaterialsymbols1(
                                                //     context);
                                                btm();
                                              })
                                        ])),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Text("Aadhar  Card",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14.copyWith(
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))),
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
                                        style:
                                            AppStyle.txtInterMedium13Black900.copyWith(
                                              fontFamily: 'Inter',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ))),
                                Padding(
                                    padding: getPadding(top: 8, right: 98),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 24,
                                                  right: 3,
                                                  bottom: 24),
                                              decoration: AppDecoration
                                                  .outlineBluegray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                164),
                                                        margin: getMargin(
                                                            bottom: 2),
                                                        child: Text(
                                                            "Upload Aadhar Card\nfront side Image Here",
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular16Black90087))
                                                  ])),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolscloudupload,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  left: 65,
                                                  top: 28,
                                                  bottom: 41),
                                              onTap: () {
                                                btm();
                                              })
                                        ])),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Text("Back Side",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium13Black900.copyWith(
                                              fontFamily: 'Inter',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ))),
                                Padding(
                                    padding: getPadding(top: 8, right: 98),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 23,
                                                  right: 3,
                                                  bottom: 23),
                                              decoration: AppDecoration
                                                  .outlineBluegray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                164),
                                                        margin:
                                                            getMargin(top: 3),
                                                        child: Text(
                                                            "Upload Aadhar Card\nback side Image Here",
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular16Black90087))
                                                  ])),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolscloudupload,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  left: 65,
                                                  top: 31,
                                                  bottom: 38),
                                              onTap: () {
                                                // onTapImgMaterialsymbols3(
                                                //     context);
                                                btm();
                                              }
                                              )
                                        ])),
                                Padding(
                                    padding: getPadding(top: 28),
                                    child: Text("Select other document",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14.copyWith(
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))),
                                Container(
                                    width: double.maxFinite,
                                    child: GestureDetector(
                                        onTap: () {
                                          // onTapGridicons(context);

                                        },
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
                                                    borderRadius:
                                                        BorderRadiusStyle
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
                                                      height:
                                                          getVerticalSize(5),
                                                      width:
                                                          getHorizontalSize(10),
                                                      margin: getMargin(top: 1))
                                                ])))),
                                CustomButton(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                                  },
                                    width: getHorizontalSize(195),
                                    text: "Save",
                                    margin: getMargin(top: 100),
                                    shape: ButtonShape.RoundedBorder26,
                                    padding: ButtonPadding.PaddingAll11,
                                    fontStyle: ButtonFontStyle.InterSemiBold24,
                                    alignment: Alignment.center)
                              ]))
                    ]))),

        ),

    );
  }
  Future<void> btm() {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
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
          decoration: BoxDecoration(
            color: Color(0xFF094DB3),// Set the background color to #000000
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), // Add top-left radius of 15
              topRight: Radius.circular(25), // Add top-right radius of 15
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Upload Document",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium20.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "You can upload .jpef, .png, .pdf file and max size be 500kb",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsLight12.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
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
                              onTap: (){
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (contaxt)=> AsterImagePage()));
                              },
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
                                style: AppStyle.txtPoppinsMedium20.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
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
                                style: AppStyle.txtPoppinsMedium20.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
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
      },
    );
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  }
  onTapAster(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes. asterImagePage);
  }
  //
  // onTapImgMaterialsymbols1(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  // }
  //
  // onTapImgMaterialsymbols2(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  // }
  //
  // onTapImgMaterialsymbols3(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  // }
  //
  // onTapGridicons(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame37355Screen);
  // }
}
