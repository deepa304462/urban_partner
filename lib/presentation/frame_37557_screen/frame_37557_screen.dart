import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_image.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

class Frame37557Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: getHorizontalSize(360),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(top: 11, bottom: 11),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder25),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(37),
                                        leadingWidth: 38,
                                        leading: AppbarImage(
                                            height: getSize(24),
                                            width: getSize(24),
                                            svgPath: ImageConstant
                                                .imgArrowleftBlack900,
                                            margin: getMargin(left: 14),
                                            onTap: () {
                                              onTapArrowleft(context);
                                            }),
                                        centerTitle: true,
                                        title: Text(
                                            "Why do you want to cancel ?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold14)),
                                    Padding(
                                        padding: getPadding(left: 53, top: 17),
                                        child: Row(children: [
                                          Container(
                                              padding: getPadding(all: 2),
                                              decoration: AppDecoration
                                                  .outlineBlue900
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapEllipse423(
                                                              context);
                                                        },
                                                        child: Container(
                                                            height: getSize(16),
                                                            width: getSize(16),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .blue900,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(8)))))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 20, top: 3),
                                              child: Text("Loren epsom",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 53, top: 12),
                                        child: Row(children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapEllipse420(context);
                                              },
                                              child: Container(
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .blue900,
                                                          width:
                                                              getHorizontalSize(
                                                                  1))))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 20, top: 3),
                                              child: Text("Loren epsom",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 53, top: 12),
                                        child: Row(children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapEllipse421(context);
                                              },
                                              child: Container(
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .blue900,
                                                          width:
                                                              getHorizontalSize(
                                                                  1))))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 20, top: 3),
                                              child: Text("Loren epsom",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 53, top: 12),
                                        child: Row(children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapEllipse422(context);
                                              },
                                              child: Container(
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .blue900,
                                                          width:
                                                              getHorizontalSize(
                                                                  1))))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 20, top: 3),
                                              child: Text("Loren Epsom",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 53, top: 12),
                                        child: Row(children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapEllipse424(context);
                                              },
                                              child: Container(
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .blue900,
                                                          width:
                                                              getHorizontalSize(
                                                                  1))))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 20, top: 2),
                                              child: Text(
                                                  "Cancel without reason",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14))
                                        ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(
                                                left: 11, top: 60, right: 11),
                                            padding: getPadding(
                                                left: 27,
                                                top: 8,
                                                right: 27,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .gradientBlue900Blue800b7
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder11),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgIcsharpwarning,
                                                                height:
                                                                    getSize(21),
                                                                width:
                                                                    getSize(21),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            2)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 2,
                                                                        top: 3),
                                                                child: Text(
                                                                    "Warning :-",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterMedium16WhiteA700))
                                                          ])),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          282),
                                                      margin: getMargin(top: 7),
                                                      child: Text(
                                                          "It is a very important job for you, If you cancel this job,  it’ll affect your monthly Income ",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtInterMedium13))
                                                ])))
                                  ])))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapEllipse423(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  onTapEllipse420(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  onTapEllipse421(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  onTapEllipse422(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  onTapEllipse424(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
