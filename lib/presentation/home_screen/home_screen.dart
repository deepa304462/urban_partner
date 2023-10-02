import 'package:urban_partner/presentation/rac_around_screen/rac_around_screen.dart';
import 'package:urban_partner/presentation/rac_around_screen/rac_around_screen.dart';
import 'package:urban_partner/presentation/rac_around_screen/rac_around_screen.dart';
import 'package:urban_partner/presentation/rac_around_screen/rac_around_screen.dart';

import '../home_screen/widgets/listservice1_item_widget.dart';
import '../home_screen/widgets/listservice2_item_widget.dart';
import '../home_screen/widgets/listservice_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(bottom: 196),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: getVerticalSize(162),
                            width: double.maxFinite,
                            padding: getPadding(
                                left: 7, top: 6, right: 7, bottom: 6),
                            decoration: AppDecoration.fillWhiteA7007f,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse136,
                                      height: getVerticalSize(74),
                                      width: getHorizontalSize(71),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(37)),
                                      alignment: Alignment.topLeft,
                                      margin: getMargin(left: 9)),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 5,
                                                                      bottom:
                                                                          5),
                                                              child: Text(
                                                                  "RAC Wallet",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanBold12)),
                                                          CustomButton(
                                                              height:
                                                                  getVerticalSize(
                                                                      26),
                                                              width:
                                                                  getHorizontalSize(
                                                                      70),
                                                              text: "5,000",
                                                              margin: getMargin(
                                                                  left: 8),
                                                              variant: ButtonVariant
                                                                  .FillDeeppurpleA200,
                                                              shape: ButtonShape
                                                                  .CircleBorder13,
                                                              padding:
                                                                  ButtonPadding
                                                                      .PaddingT5,
                                                              fontStyle:
                                                                  ButtonFontStyle
                                                                      .RobotoRomanBold12,
                                                              prefixWidget: Container(
                                                                  margin: getMargin(
                                                                      right: 2),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color: ColorConstant
                                                                              .whiteA700),
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVector)))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 15),
                                                    child: Row(children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  40),
                                                          width:
                                                              getHorizontalSize(
                                                                  80),
                                                          decoration: AppDecoration
                                                              .outlineBlack9003f1,
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Card(
                                                                        clipBehavior:
                                                                            Clip
                                                                                .antiAlias,
                                                                        elevation:
                                                                            0,
                                                                        margin:
                                                                            EdgeInsets.all(
                                                                                0),
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadiusStyle.roundedBorder2),
                                                                        child: Container(
                                                                            height: getVerticalSize(40),
                                                                            width: getHorizontalSize(80),
                                                                            decoration: AppDecoration.gradientOrange700YellowA400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
                                                                            child: Stack(children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgGroup15, height: getVerticalSize(40), width: getHorizontalSize(80), radius: BorderRadius.circular(getHorizontalSize(2)), alignment: Alignment.center)
                                                                            ])))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(bottom: 1),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                          Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Text("Silver Plan", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInriaSansBold47),
                                                                                Text("Benefits", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInriaSansRegular376),
                                                                                Container(width: getHorizontalSize(34), margin: getMargin(left: 2), child: Text("2 Free T-Shirt\nPer lead cost 100 Rs\nNo charge on per job\n1 year validity", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInriaSansRegular376)),
                                                                                Align(alignment: Alignment.centerRight, child: Text("₹1500.0", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInriaSansBold47Black900))
                                                                              ]),
                                                                          Padding(
                                                                              padding: getPadding(left: 3, top: 29),
                                                                              child: Text("₹2500.0", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInriaSansBold47Black900))
                                                                        ])))
                                                              ])),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgComputer,
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                          width:
                                                              getHorizontalSize(
                                                                  19),
                                                          margin: getMargin(
                                                              left: 28,
                                                              top: 12,
                                                              bottom: 8)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPhshoppingcartfill,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 8,
                                                              bottom: 8))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 27, top: 3),
                                                    child: Text("Gold",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMulishRomanBlack13))
                                              ]))),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                          padding: getPadding(top: 13),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 8, bottom: 2),
                                                    child: Text("Anil Kumar",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold12
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.36)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 72,
                                                        top: 5,
                                                        bottom: 5),
                                                    child: Text("Lead Wallet",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRomanBold12)),
                                                CustomButton(
                                                    height: getVerticalSize(26),
                                                    width:
                                                        getHorizontalSize(70),
                                                    text: "10 Leads",
                                                    margin: getMargin(left: 8),
                                                    variant: ButtonVariant
                                                        .FillTeal800,
                                                    shape: ButtonShape
                                                        .CircleBorder13,
                                                    fontStyle: ButtonFontStyle
                                                        .RobotoRomanBold12)
                                              ]))),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                          padding:
                                              getPadding(left: 95, top: 41),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("Mukundpur,",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanBold11
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.33))),
                                                Padding(
                                                    padding: getPadding(top: 3),
                                                    child: Row(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIcsharpstarpurple500,
                                                          height:
                                                              getVerticalSize(
                                                                  16),
                                                          width:
                                                              getHorizontalSize(
                                                                  15)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1),
                                                          child: Text("4.5",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12))
                                                    ]))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                          margin: getMargin(bottom: 15),
                                          padding: getPadding(
                                              left: 17,
                                              top: 3,
                                              right: 17,
                                              bottom: 3),
                                          decoration: AppDecoration
                                              .fillGreenA200
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder22),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(89),
                                                    margin: getMargin(top: 2),
                                                    child: Text(
                                                        "Total Earned:\nRs.10,000",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtInterBold13
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.39))))
                                              ])))
                                ])),
                        Padding(
                            padding: getPadding(left: 16, top: 9, right: 17),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("5 New Jobs",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold16)),
                                  Container(
                                      height: getVerticalSize(23),
                                      width: getHorizontalSize(92),
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapTxtMissedjob(
                                                          context);
                                                    },
                                                    child: Text("Missed Job",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16Blue900
                                                            .copyWith(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline)))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                    height: getSize(8),
                                                    width: getSize(8),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .red600,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    4)))))
                                          ]))
                                ])),
                        Padding(
                            padding: getPadding(left: 17, top: 17, right: 22),
                            child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: getVerticalSize(14));
                                },
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return ListserviceItemWidget(onTapReject: () {
                                    onTapReject(context);
                                  }, onTapAccept: () {
                                    onTapAccept(context);
                                  });
                                })),
                        Container(
                          height: getVerticalSize(350),
                          width: double.maxFinite,
                          margin: getMargin(top: 14),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 17, right: 22),
                                        child: ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(14));
                                            },
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Listservice1ItemWidget(
                                                  onTapReject: () {
                                                onTapReject(context);
                                              }, onTapAccept: () {
                                                onTapAccept(context);
                                              });
                                            }))),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: getPadding(bottom: 90),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: double.maxFinite,
                                            padding:
                                                getPadding(top: 18, bottom: 18),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 8),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomIconButton(
                                                                height: 40,
                                                                width: 40,
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillBlue900,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll8,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFrame)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                    "New Job",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMulishRomanBlack10))
                                                          ])),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapColumnrefresh(
                                                            context);
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 8),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 40,
                                                                    width: 40,
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillBlack9007f,
                                                                    padding:
                                                                        IconButtonPadding
                                                                            .PaddingAll8,
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgRefresh)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "Ongoing",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMulishRomanBold10))
                                                              ]))),
                                                  GestureDetector(
                                                    onTap: () {
                                                      onTapRacRound(context);
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            top: 8, bottom: 1),
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomIconButton(
                                                                  height: 40,
                                                                  width: 40,
                                                                  variant:
                                                                      IconButtonVariant
                                                                          .FillBlack9007f,
                                                                  padding:
                                                                      IconButtonPadding
                                                                          .PaddingAll8,
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCheckmark)),
                                                              Text("RAC Around",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanBold10)
                                                            ])),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 8),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomIconButton(
                                                                height: 40,
                                                                width: 40,
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillBlack9007f,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll8,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFrameWhiteA700)),
                                                            Text("Shopping",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMulishRomanBold10)
                                                          ])),
                                                  GestureDetector(
                                                    onTap: () {
                                                      onTapColumnframetwo(
                                                          context);
                                                    },
                                                    child: Padding(
                                                      padding: getPadding(
                                                          top: 8, bottom: 1),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomIconButton(
                                                                height: 40,
                                                                width: 40,
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillBlack9007f,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll8,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFrameWhiteA70040x40)),
                                                            Text("Profile",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMulishRomanBold10)
                                                          ]),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                          Container(
                                              height: getVerticalSize(45),
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .blueGray100))
                                        ]),
                                  ),
                                ),
                              ]),
                        ),
                        Padding(
                            padding: getPadding(left: 17, top: 14, right: 22),
                            child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: getVerticalSize(14));
                                },
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return Listservice2ItemWidget(
                                      onTapReject: () {
                                    onTapReject(context);
                                  }, onTapAccept: () {
                                    onTapAccept(context);
                                  });
                                }))
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  onTapReject(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  onTapAccept(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }

  onTapRacRound(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
  }

  onTapTxtMissedjob(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.missedJobsScreen);
  }

  onTapColumnrefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }

  onTapColumnframetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
