import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

class AsterImagePage extends StatefulWidget {
  @override
  _AsterImagePageState createState() => _AsterImagePageState();
  onTapImgMaterialsymbols(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  }
}

class _AsterImagePageState extends State<AsterImagePage>
    with AutomaticKeepAliveClientMixin<AsterImagePage> {
  TextEditingController rectangle3405Controller = TextEditingController();

  TextEditingController rectangle3411Controller = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                          margin: getMargin(right: 350),
                          child: Icon(Icons.arrow_back)),
                      Container(
                        // width: 350,
                        // margin: getMargin(right: 90),
                        child: Text(
                          'Set up your\nDetails',
                          style: TextStyle(
                              fontSize: 45.7,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Work Profile'),
                          Text(
                            'Documents',
                            style: TextStyle(
                              height: 1,
                              color: Color(
                                  0xFF094DB3), // Set the text color to blue
                              decoration: TextDecoration
                                  .underline, // Add an underline decoration
                              decorationColor: Color(
                                  0xFF094DB3), // Set the underline color to blue
                              decorationThickness:
                                  2.0, // Set the thickness of the underline
                            ),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey, thickness: 2, ),
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
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle4387,
                                              height: getVerticalSize(93),
                                              width: getHorizontalSize(97),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(46))),
                                          CustomImageView(
                                            onTap: () {
                                              btm();
                                            },
                                            svgPath: ImageConstant
                                                .imgMaterialsymbolscloudupload,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 31, bottom: 38),
                                          )
                                        ])),
                                Padding(
                                    padding: getPadding(top: 17),
                                    child: Text("PAN Card",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: rectangle3405Controller,
                                    margin: getMargin(top: 8)),
                                Padding(
                                    padding: getPadding(top: 8, right: 98),
                                    child: Row(
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
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolscloudupload,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  left: 65,
                                                  top: 31,
                                                  bottom: 38))
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
                                        style:
                                            AppStyle.txtInterMedium13Black900)),
                                Padding(
                                    padding: getPadding(top: 8, right: 98),
                                    child: Row(
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
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolscloudupload,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  left: 65,
                                                  top: 31,
                                                  bottom: 38))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Text("Back Side",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium13Black900)),
                                Padding(
                                    padding: getPadding(top: 8, right: 98),
                                    child: Row(
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
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolscloudupload,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(
                                                  left: 65,
                                                  top: 31,
                                                  bottom: 38))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 28),
                                    child: Text("Select other document",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
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
                                CustomButton(
                                    width: getHorizontalSize(195),
                                    text: "Save",
                                    margin: getMargin(bottom: 15, top: 50),
                                    shape: ButtonShape.RoundedBorder26,
                                    padding: ButtonPadding.PaddingAll11,
                                    fontStyle: ButtonFontStyle.InterSemiBold24,
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Dashboard()));
                                    },
                                    alignment: Alignment.center)
                              ]))
                    ])))));
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
            color: Color(0xFF094DB3), // Set the background color to #000000
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

  onTapImgMaterialsymbols(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  }
}
