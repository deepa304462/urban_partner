import 'package:urban_partner/presentation/end_screen/end_screen.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/widgets/app_bar/appbar_image.dart';

import '../ongoing_press_screen/widgets/ongoing_press_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class OngoingPressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(58),
          leadingWidth: 58,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.imgGroup295,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
          title: Center(child: AppbarSubtitle1(text: "Ongoing Jobs")),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 8),
            child: Padding(
              padding: getPadding(bottom: 5),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Divider(
                    height: getVerticalSize(2),
                    thickness: getVerticalSize(2),
                    color: ColorConstant.blueGray100),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: getPadding(left: 16, top: 8),
                        child: Text("5 Ongoing Jobs",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold16))),
                Padding(
                    padding: getPadding(left: 17, top: 13, right: 22),
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(15));
                        },
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return OngoingPressItemWidget(
                            onTapGoto: () {
                              onTapGoto(context);
                            },
                            onTapCancel: () {
                              // Cancelled Button Alert box
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  content: Container(
                                    height: 400,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    // width: getHorizontalSize(500),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.maxFinite,
                                          child: Container(
                                            padding:
                                                getPadding(top: 1, bottom: 1),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder25),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomAppBar(
                                                    height: getVerticalSize(37),
                                                    leadingWidth: 38,
                                                    leading: AppbarImage(
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        svgPath: ImageConstant
                                                            .imgArrowleftBlack900,
                                                        margin:
                                                            getMargin(left: 14),
                                                        onTap: () {
                                                          onTapArrowleft(
                                                              context);
                                                        }),
                                                    centerTitle: true,
                                                    title: Text(
                                                        "      Why do you want to cancel ?",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold14)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 53, top: 17),
                                                    child: Row(children: [
                                                      Container(
                                                          padding: getPadding(
                                                              all: 2),
                                                          decoration: AppDecoration
                                                              .outlineBlue900
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder8),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapEllipse423(
                                                                          context);
                                                                    },
                                                                    child: Container(
                                                                        height: getSize(
                                                                            16),
                                                                        width: getSize(
                                                                            16),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blue900,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(8)))))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 3),
                                                          child: Text(
                                                              "Loren epsom",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 53, top: 12),
                                                    child: Row(children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapEllipse420(
                                                                context);
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getSize(20),
                                                              width:
                                                                  getSize(20),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              10)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blue900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 3),
                                                          child: Text(
                                                              "Loren epsom",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 53, top: 12),
                                                    child: Row(children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapEllipse421(
                                                                context);
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getSize(20),
                                                              width:
                                                                  getSize(20),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              10)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blue900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 3),
                                                          child: Text(
                                                              "Loren epsom",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 53, top: 12),
                                                    child: Row(children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapEllipse422(
                                                                context);
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getSize(20),
                                                              width:
                                                                  getSize(20),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              10)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blue900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 3),
                                                          child: Text(
                                                              "Loren Epsom",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 53, top: 12),
                                                    child: Row(children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapEllipse424(
                                                                context);
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getSize(20),
                                                              width:
                                                                  getSize(20),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              10)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blue900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 2),
                                                          child: Text(
                                                              "Cancel without reason",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14))
                                                    ])),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    margin: getMargin(
                                                        left: 11,
                                                        top: 60,
                                                        right: 11),
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
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
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
                                                                          getSize(
                                                                              21),
                                                                      width:
                                                                          getSize(
                                                                              21),
                                                                      margin: getMargin(
                                                                          bottom:
                                                                              2)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              2,
                                                                          top:
                                                                              3),
                                                                      child: Text(
                                                                          "Warning :-",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterMedium16WhiteA700))
                                                                ])),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    282),
                                                            margin: getMargin(
                                                                top: 7),
                                                            child: Text(
                                                                "It is a very important job for you, If you cancel this job,  it’ll affect your monthly Income ",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtInterMedium13))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        })),
                Container(
                    height: getVerticalSize(189),
                    width: double.maxFinite,
                    margin: getMargin(top: 15),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 17, right: 22),
                              padding: getPadding(
                                  left: 16, top: 8, right: 16, bottom: 8),
                              decoration: AppDecoration.outlineBlack9003f2
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder11),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(right: 77),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Service",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium13Black900),
                                              Text("Time slot",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium13Black900)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 5, right: 19),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Window AC Service",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterBold14),
                                              Text("12-5-21 10:00AM",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterMedium14)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 18, right: 1),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 2),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Price",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium13Black900),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "₹349",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold14)))
                                                      ])),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgGroup37548,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(
                                                      top: 10, bottom: 5)),
                                              Container(
                                                  width: getHorizontalSize(122),
                                                  margin: getMargin(
                                                      left: 2, top: 5),
                                                  child: Text(
                                                      "Model Town, Delhi\n110044",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 19, top: 19, right: 19),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomButton(
                                                    width:
                                                        getHorizontalSize(128),
                                                    text: "End job",
                                                    variant: ButtonVariant
                                                        .FillLightgreen900,
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  EndScreen()));
                                                    },
                                                  ),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(35),
                                                      width: getHorizontalSize(
                                                          129),
                                                      text: "Details",
                                                      variant: ButtonVariant
                                                          .FillAmber600,
                                                      onTap: () {
                                                        onTapGoto(context);
                                                      })
                                                ])))
                                  ]))),
                    ])),
                Container(
                  margin: getMargin(left: 17, top: 14, right: 22),
                  padding: getPadding(left: 16, top: 8, right: 16, bottom: 8),
                  decoration: AppDecoration.outlineBlack9003f2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder11),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(right: 77),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Service",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium13Black900),
                                  Text("Time slot",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium13Black900)
                                ])),
                        Padding(
                            padding: getPadding(top: 5, right: 19),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Window AC Service",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold14),
                                  Text("12-5-21 10:00AM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium14)
                                ])),
                        Padding(
                            padding: getPadding(top: 18, right: 10),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Price",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium13Black900),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(top: 5),
                                                child: Text("₹349",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold14)))
                                      ]),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgGroup37548,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(top: 10, bottom: 3)),
                                  Container(
                                      width: getHorizontalSize(113),
                                      margin: getMargin(left: 2, top: 5),
                                      child: Text("Model Town, Delhi\n110044",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterMedium13Black900))
                                ])),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(left: 19, top: 11, right: 19),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomButton(
                                      width: getHorizontalSize(128),
                                      text: "Go to",
                                      onTap: () {
                                        onTapGotoone(context);
                                      }),
                                  CustomButton(
                                    height: getVerticalSize(35),
                                    width: getHorizontalSize(129),
                                    text: "Cancel",
                                    variant: ButtonVariant.FillRed600,
                                    onTap: () {
                                      // Cancelled Button Alert box
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          content: Container(
                                              height: 400,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              // width: getHorizontalSize(500),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width: double.maxFinite,
                                                        child: Container(
                                                            padding: getPadding(
                                                                top: 1,
                                                                bottom: 1),
                                                            decoration: AppDecoration
                                                                .fillWhiteA700
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder25),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  CustomAppBar(
                                                                      height:
                                                                          getVerticalSize(
                                                                              37),
                                                                      leadingWidth:
                                                                          38,
                                                                      leading:
                                                                          AppbarImage(
                                                                              height: getSize(
                                                                                  24),
                                                                              width: getSize(
                                                                                  24),
                                                                              svgPath: ImageConstant
                                                                                  .imgArrowleftBlack900,
                                                                              margin: getMargin(
                                                                                  left:
                                                                                      14),
                                                                              onTap:
                                                                                  () {
                                                                                onTapArrowleft(context);
                                                                              }),
                                                                      centerTitle:
                                                                          true,
                                                                      title: Text(
                                                                          "      Why do you want to cancel ?",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterBold14)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              53,
                                                                          top:
                                                                              17),
                                                                      child: Row(
                                                                          children: [
                                                                            Container(
                                                                                padding: getPadding(all: 2),
                                                                                decoration: AppDecoration.outlineBlue900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                                                                child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  GestureDetector(
                                                                                      onTap: () {
                                                                                        onTapEllipse423(context);
                                                                                      },
                                                                                      child: Container(height: getSize(16), width: getSize(16), decoration: BoxDecoration(color: ColorConstant.blue900, borderRadius: BorderRadius.circular(getHorizontalSize(8)))))
                                                                                ])),
                                                                            Padding(
                                                                                padding: getPadding(left: 20, top: 3),
                                                                                child: Text("Loren epsom", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              53,
                                                                          top:
                                                                              12),
                                                                      child: Row(
                                                                          children: [
                                                                            GestureDetector(
                                                                                onTap: () {
                                                                                  onTapEllipse420(context);
                                                                                },
                                                                                child: Container(height: getSize(20), width: getSize(20), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(10)), border: Border.all(color: ColorConstant.blue900, width: getHorizontalSize(1))))),
                                                                            Padding(
                                                                                padding: getPadding(left: 20, top: 3),
                                                                                child: Text("Loren epsom", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              53,
                                                                          top:
                                                                              12),
                                                                      child: Row(
                                                                          children: [
                                                                            GestureDetector(
                                                                                onTap: () {
                                                                                  onTapEllipse421(context);
                                                                                },
                                                                                child: Container(height: getSize(20), width: getSize(20), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(10)), border: Border.all(color: ColorConstant.blue900, width: getHorizontalSize(1))))),
                                                                            Padding(
                                                                                padding: getPadding(left: 20, top: 3),
                                                                                child: Text("Loren epsom", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              53,
                                                                          top:
                                                                              12),
                                                                      child: Row(
                                                                          children: [
                                                                            GestureDetector(
                                                                                onTap: () {
                                                                                  onTapEllipse422(context);
                                                                                },
                                                                                child: Container(height: getSize(20), width: getSize(20), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(10)), border: Border.all(color: ColorConstant.blue900, width: getHorizontalSize(1))))),
                                                                            Padding(
                                                                                padding: getPadding(left: 20, top: 3),
                                                                                child: Text("Loren Epsom", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              53,
                                                                          top:
                                                                              12),
                                                                      child: Row(
                                                                          children: [
                                                                            GestureDetector(
                                                                                onTap: () {
                                                                                  onTapEllipse424(context);
                                                                                },
                                                                                child: Container(height: getSize(20), width: getSize(20), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(10)), border: Border.all(color: ColorConstant.blue900, width: getHorizontalSize(1))))),
                                                                            Padding(
                                                                                padding: getPadding(left: 20, top: 2),
                                                                                child: Text("Cancel without reason", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Container(
                                                                          margin: getMargin(left: 11, top: 60, right: 11),
                                                                          padding: getPadding(left: 27, top: 8, right: 27, bottom: 8),
                                                                          decoration: AppDecoration.gradientBlue900Blue800b7.copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
                                                                          child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 1),
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                  CustomImageView(svgPath: ImageConstant.imgIcsharpwarning, height: getSize(21), width: getSize(21), margin: getMargin(bottom: 2)),
                                                                                  Padding(padding: getPadding(left: 2, top: 3), child: Text("Warning :-", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium16WhiteA700))
                                                                                ])),
                                                                            Container(
                                                                                width: getHorizontalSize(282),
                                                                                margin: getMargin(top: 7),
                                                                                child: Text("It is a very important job for you, If you cancel this job,  it’ll affect your monthly Income ", maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtInterMedium13))
                                                                          ])))
                                                                ])))
                                                  ])),
                                        ),
                                      );
                                    },
                                  )
                                ]),
                          ),
                        ),
                      ]),
                ),
                Padding(
                    padding: getPadding(left: 17, top: 13, right: 22),
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(15));
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return OngoingPressItemWidget(
                            onTapGoto: () {
                              onTapGoto(context);
                            },
                            onTapCancel: () {
                              // Cancelled Button Alert box
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  content: Container(
                                    height: 400,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    // width: getHorizontalSize(500),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.maxFinite,
                                          child: Container(
                                            padding:
                                                getPadding(top: 1, bottom: 1),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder25),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomAppBar(
                                                    height: getVerticalSize(37),
                                                    leadingWidth: 38,
                                                    leading: AppbarImage(
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        svgPath: ImageConstant
                                                            .imgArrowleftBlack900,
                                                        margin:
                                                            getMargin(left: 14),
                                                        onTap: () {
                                                          onTapArrowleft(
                                                              context);
                                                        }),
                                                    centerTitle: true,
                                                    title: Text(
                                                        "      Why do you want to cancel ?",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold14)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 53, top: 17),
                                                    child: Row(children: [
                                                      Container(
                                                          padding: getPadding(
                                                              all: 2),
                                                          decoration: AppDecoration
                                                              .outlineBlue900
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder8),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapEllipse423(
                                                                          context);
                                                                    },
                                                                    child: Container(
                                                                        height: getSize(
                                                                            16),
                                                                        width: getSize(
                                                                            16),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blue900,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(8)))))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 3),
                                                          child: Text(
                                                              "Loren epsom",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 53, top: 12),
                                                    child: Row(children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapEllipse420(
                                                                context);
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getSize(20),
                                                              width:
                                                                  getSize(20),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              10)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blue900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 3),
                                                          child: Text(
                                                              "Loren epsom",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14))
                                                    ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 53, top: 12),
                                                    child: Row(children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            // onTapEllipse421(context);
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getSize(20),
                                                              width:
                                                                  getSize(20),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              10)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blue900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 3),
                                                          child: Text(
                                                              "Loren epsom",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14))
                                                    ])),
                                                Padding(
                                                  padding: getPadding(
                                                      left: 53, top: 12),
                                                  child: Row(children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        // onTapEllipse422(
                                                        //     context);
                                                      },
                                                      child: Container(
                                                        height: getSize(20),
                                                        width: getSize(20),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10)),
                                                          border: Border.all(
                                                            color: ColorConstant
                                                                .blue900,
                                                            width:
                                                                getHorizontalSize(
                                                                    1),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                          left: 20, top: 3),
                                                      child: Text("Loren Epsom",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium14),
                                                    ),
                                                  ]),
                                                ),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 53, top: 12),
                                                    child: Row(children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          // onTapEllipse424(context);
                                                        },
                                                        child: Container(
                                                          height: getSize(20),
                                                          width: getSize(20),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            10)),
                                                            border: Border.all(
                                                              color:
                                                                  ColorConstant
                                                                      .blue900,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 2),
                                                          child: Text(
                                                              "Cancel without reason",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14))
                                                    ])),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    margin: getMargin(
                                                        left: 11,
                                                        top: 60,
                                                        right: 11),
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
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                              top: 1),
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
                                                                      getSize(
                                                                          21),
                                                                  width:
                                                                      getSize(
                                                                          21),
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
                                                                        .txtInterMedium16WhiteA700),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    282),
                                                            margin: getMargin(
                                                                top: 7),
                                                            child: Text(
                                                                "It is a very important job for you, If you cancel this job,  it’ll affect your monthly Income ",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtInterMedium13))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        })),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  onTapGoto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37557Screen);
  }

  onTapColumnframetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapGotoone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }
  // onTapRaCScreen(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.racAroundScreen);
  // }

  onTapCancelone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37557Screen);
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapEllipse423(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  onTapEllipse420(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  onTapEllipse421(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  onTapEllipse422(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  onTapEllipse424(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  // onTapGroup298(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  // }
  // onTapShoppingPanel(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.shoppingPanelScreen);
  // }
}
