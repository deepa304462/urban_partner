import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class ShopDetailedPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurple50,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgGroup295,
                    margin: getMargin(top: 8, bottom: 8),
                    onTap: () {
                      onTapGroup307(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "RAC Repair Shop"),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Divider(
                                  height: getVerticalSize(2),
                                  thickness: getVerticalSize(2),
                                  color: ColorConstant.blueGray100),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 10, right: 16),
                                  padding: getPadding(top: 12, bottom: 12),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder22),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 18, top: 3),
                                            child: Text("RAC Repair Center 1",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterBold16)),
                                        Padding(
                                            padding:
                                                getPadding(left: 18, top: 8),
                                            child: Text(
                                                "Electronics & Repair Management",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14)),
                                        Padding(
                                            padding: getPadding(
                                                left: 18, top: 3, right: 46),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 4, bottom: 2),
                                                  child: Text(
                                                      "Address(north west Delhi)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIcrounddirectionswalk,
                                                  height: getSize(24),
                                                  width: getSize(24)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 3,
                                                      bottom: 3),
                                                  child: Text("15 m",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14))
                                            ])),
                                        Padding(
                                            padding:
                                                getPadding(left: 18, top: 4),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgGroup37671,
                                                  height: getVerticalSize(20),
                                                  width:
                                                      getHorizontalSize(108)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10, top: 2),
                                                  child: Text(
                                                      "4.9 (100 Reviews)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14))
                                            ])),
                                        Padding(
                                            padding:
                                                getPadding(left: 15, top: 16),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "OPEN",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .blue900,
                                                          fontSize:
                                                              getFontSize(14),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  TextSpan(
                                                      text:
                                                          " : 10:00 am - 10:00 pm (Today) ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(14),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Padding(
                                            padding: getPadding(top: 19),
                                            child: Divider(
                                                height: getVerticalSize(2),
                                                thickness: getVerticalSize(2),
                                                color:
                                                    ColorConstant.blueGray100)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(top: 15),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomIconButton(
                                                                height: 39,
                                                                width: 39,
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillLightgreen900,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll8,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgMaterialsymbolscall)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6),
                                                                child: Text(
                                                                    "Call",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13))
                                                          ]),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 51),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 39,
                                                                    width: 39,
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillRed900,
                                                                    padding:
                                                                        IconButtonPadding
                                                                            .PaddingAll8,
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgTeenyiconsdirectionsolid)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                6),
                                                                    child: Text(
                                                                        "Directions",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular13))
                                                              ]))
                                                    ])))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 16, right: 16),
                                  padding: getPadding(
                                      left: 15, top: 13, right: 15, bottom: 13),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder22),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 3),
                                            child: Text("Photos",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterBold16)),
                                        Padding(
                                            padding: getPadding(
                                                top: 25, right: 1, bottom: 22),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle4477,
                                                          height: getSize(93),
                                                          width: getSize(93),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      29)),
                                                          margin: getMargin(
                                                              right: 12))),
                                                  Expanded(
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle4477,
                                                          height: getSize(93),
                                                          width: getSize(93),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      29)),
                                                          margin: getMargin(
                                                              left: 12,
                                                              right: 12))),
                                                  Expanded(
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle4477,
                                                          height: getSize(93),
                                                          width: getSize(93),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      29)),
                                                          margin: getMargin(
                                                              left: 12)))
                                                ]))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 16, right: 16),
                                  padding: getPadding(top: 11, bottom: 11),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder22),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 1),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Address",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold16),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          217),
                                                      margin: getMargin(top: 6),
                                                      child: Text(
                                                          "Torem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14))
                                                ])),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.img26491881,
                                            height: getSize(80),
                                            width: getSize(80),
                                            margin: getMargin(top: 24))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 16, right: 16),
                                  padding: getPadding(
                                      left: 84, top: 16, right: 84, bottom: 16),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder22),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Rate the store",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold16),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgGroup37676,
                                            height: getVerticalSize(29),
                                            width: getHorizontalSize(189),
                                            margin:
                                                getMargin(top: 30, bottom: 50))
                                      ]))
                            ]))))));
  }

  onTapGroup307(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingPanelScreen);
  }
}
