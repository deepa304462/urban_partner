import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RacShopNearMeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurple50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgGroup295,
                    margin: getMargin(top: 8, bottom: 8),
                    onTap: () {
                      onTapGroup306(context);
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
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: searchController,
                                  hintText: "Search shops here.......",
                                  margin:
                                      getMargin(left: 16, top: 13, right: 15),
                                  variant: TextFormFieldVariant.FillWhiteA700,
                                  shape: TextFormFieldShape.CircleBorder22,
                                  padding: TextFormFieldPadding.PaddingT12,
                                  fontStyle:
                                      TextFormFieldFontStyle.PoppinsRegular16,
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 12,
                                          right: 8,
                                          bottom: 12),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgIcoutlinesearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(48))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 22),
                                      child: Text("Shops Near You",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium16))),
                              GestureDetector(
                                onTap: () {
                                  onTapShopdetails(
                                      context);
                                },
                                child: Container(
                                    margin: getMargin(left: 16, right: 16),
                                    padding: getPadding(all: 8),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle4477,
                                              height: getSize(93),
                                              width: getSize(93),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(29)),
                                              margin: getMargin(bottom: 29)),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 8, bottom: 8),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2),
                                                            child: Row(children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              3),
                                                                  child: Text(
                                                                      "RAC Repair center 1",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterMedium16)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowright,
                                                                  height:
                                                                      getSize(24),
                                                                  width:
                                                                      getSize(24),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              64))
                                                            ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 16),
                                                            child: Row(children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgIcsharpstarpurple500,
                                                                  height:
                                                                      getSize(20),
                                                                  width: getSize(
                                                                      20)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top: 2,
                                                                          bottom:
                                                                              1),
                                                                  child: Text(
                                                                      "4.0",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterBold13Bluegray90001)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              15,
                                                                          top: 2,
                                                                          bottom:
                                                                              1),
                                                                  child: Text(
                                                                      "15 m",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular13)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              18,
                                                                          top: 3),
                                                                  child: Text(
                                                                      "Closes at 10:00pm",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular13))
                                                            ])),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgGroup37664,
                                                            height:
                                                                getVerticalSize(
                                                                    39),
                                                            width:
                                                                getHorizontalSize(
                                                                    105),
                                                            margin: getMargin(
                                                                left: 18,
                                                                top: 15))
                                                      ])))
                                        ])),
                              ),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 13, right: 16),
                                  padding: getPadding(all: 8),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder11),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle4477,
                                            height: getSize(93),
                                            width: getSize(93),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(29)),
                                            margin: getMargin(bottom: 29)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 8, bottom: 8),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Row(children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            3),
                                                                child: Text(
                                                                    "RAC Repair center 1",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterMedium16)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            64))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgIcsharpstarpurple500,
                                                                height:
                                                                    getSize(20),
                                                                width: getSize(
                                                                    20)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "4.0",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold13Bluegray90001)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            15,
                                                                        top: 2,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "15 m",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 3),
                                                                child: Text(
                                                                    "Closes at 10:00pm",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13))
                                                          ])),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup37664,
                                                          height:
                                                              getVerticalSize(
                                                                  39),
                                                          width:
                                                              getHorizontalSize(
                                                                  105),
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 15))
                                                    ])))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 13, right: 16),
                                  padding: getPadding(all: 8),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder11),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle4477,
                                            height: getSize(93),
                                            width: getSize(93),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(29)),
                                            margin: getMargin(bottom: 29)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 8, bottom: 8),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Row(children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            3),
                                                                child: Text(
                                                                    "RAC Repair center 1",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterMedium16)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            64))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgIcsharpstarpurple500,
                                                                height:
                                                                    getSize(20),
                                                                width: getSize(
                                                                    20)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "4.0",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold13Bluegray90001)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            15,
                                                                        top: 2,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "15 m",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 3),
                                                                child: Text(
                                                                    "Closes at 10:00pm",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13))
                                                          ])),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup37664,
                                                          height:
                                                              getVerticalSize(
                                                                  39),
                                                          width:
                                                              getHorizontalSize(
                                                                  105),
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 15))
                                                    ])))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 13, right: 16),
                                  padding: getPadding(all: 8),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder11),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle4477,
                                            height: getSize(93),
                                            width: getSize(93),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(29)),
                                            margin: getMargin(bottom: 29)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 8, bottom: 8),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Row(children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            3),
                                                                child: Text(
                                                                    "RAC Repair center 1",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterMedium16)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            64))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgIcsharpstarpurple500,
                                                                height:
                                                                    getSize(20),
                                                                width: getSize(
                                                                    20)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "4.0",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold13Bluegray90001)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            15,
                                                                        top: 2,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "15 m",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 3),
                                                                child: Text(
                                                                    "Closes at 10:00pm",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13))
                                                          ])),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup37664,
                                                          height:
                                                              getVerticalSize(
                                                                  39),
                                                          width:
                                                              getHorizontalSize(
                                                                  105),
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 15))
                                                    ])))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 13, right: 16),
                                  padding: getPadding(all: 8),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder11),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle4477,
                                            height: getSize(93),
                                            width: getSize(93),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(29)),
                                            margin: getMargin(bottom: 29)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 8, bottom: 8),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Row(children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            3),
                                                                child: Text(
                                                                    "RAC Repair center 1",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterMedium16)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            64))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgIcsharpstarpurple500,
                                                                height:
                                                                    getSize(20),
                                                                width: getSize(
                                                                    20)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "4.0",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold13Bluegray90001)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            15,
                                                                        top: 2,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "15 m",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 3),
                                                                child: Text(
                                                                    "Closes at 10:00pm",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular13))
                                                          ])),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup37664,
                                                          height:
                                                              getVerticalSize(
                                                                  39),
                                                          width:
                                                              getHorizontalSize(
                                                                  105),
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 15))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapGroup306(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingPanelScreen);
  }
  onTapShopdetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopDetailedPageScreen);
  }
}
