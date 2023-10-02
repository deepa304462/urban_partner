import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class MyEarningScreen extends StatelessWidget {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(66),
            leadingWidth: 58,
            leading: AppbarIconbutton(
                svgPath: ImageConstant.imgGroup295,
                onTap: () {
                  onTapGroup305(context);
                }),
            centerTitle: true,
            title: AppbarSubtitle(text: "My Total Earnings")),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(top: 8, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                  height: getVerticalSize(2),
                  thickness: getVerticalSize(2),
                  color: ColorConstant.blueGray100),
              Container(
                  margin: getMargin(left: 16, top: 10, right: 16),
                  padding: getPadding(left: 9, top: 10, right: 9, bottom: 10),
                  decoration: AppDecoration.outlineBlack9003f5
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: getPadding(left: 1, top: 5),
                            child: Text("Total Earning",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium20)),
                        Padding(
                            padding: getPadding(top: 4),
                            child: Text("₹349,000",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold20WhiteA700))
                      ])),
              Container(
                margin: getMargin(left: 16, top: 8, right: 14),
                padding: getPadding(left: 6, top: 10, right: 6, bottom: 10),
                decoration: AppDecoration.fillGray10001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: getPadding(left: 11, top: 6, right: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: getPadding(top: 5, bottom: 3),
                                  child: Text("Payroll Summary",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterBold16Bluegray900)),
                              CustomDropDown(
                                  width: getHorizontalSize(105),
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 20, right: 10),
                                      // decoration: BoxDecoration(color: ColorConstant.indigo900),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgArrowdown)),
                                  hintText: "Yearly",
                                  variant: DropDownVariant.OutlineIndigo900,
                                  shape: DropDownShape.RoundedBorder14,
                                  padding: DropDownPadding.PaddingT7,
                                  fontStyle: DropDownFontStyle.InterRegular12,
                                  items: dropdownItemList,
                                  onChanged: (value) {})
                            ])),
                    Padding(
                      padding: getPadding(top: 25, right: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(bottom: 11),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("45k",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtSFProDisplayMedium10),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Text("40k",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayMedium10)),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Text("35k",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayMedium10)),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Text("30k",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayMedium10)),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Text("25k",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayMedium10)),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Text("20k",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayMedium10)),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(top: 9),
                                            child: Text("15k",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: getPadding(top: 8),
                                            child: Text("10k",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                getPadding(top: 8, right: 1),
                                            child: Text("0",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10)))
                                  ])),
                          Expanded(
                            child: Padding(
                              padding: getPadding(left: 3, top: 1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: getVerticalSize(173),
                                    width: getHorizontalSize(316),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(107),
                                                width: getHorizontalSize(300),
                                                margin: getMargin(bottom: 11),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  89),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .bottomLeft),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  105),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          margin: getMargin(
                                                              left: 25)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  100),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin: getMargin(
                                                              left: 51)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  90),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin: getMargin(
                                                              left: 76)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  107),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          margin: getMargin(
                                                              left: 103)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  90),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin: getMargin(
                                                              left: 130)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  73),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin: getMargin(
                                                              right: 133)),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right:
                                                                          78),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgGroup7751,
                                                                        height: getVerticalSize(
                                                                            100),
                                                                        width: getHorizontalSize(
                                                                            11)),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgGroup7751,
                                                                        height: getVerticalSize(
                                                                            90),
                                                                        width: getHorizontalSize(
                                                                            11),
                                                                        margin: getMargin(
                                                                            left:
                                                                                16,
                                                                            top:
                                                                                10))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  107),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .centerRight,
                                                          margin: getMargin(
                                                              right: 53)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  90),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin: getMargin(
                                                              right: 27)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup7751,
                                                          height:
                                                              getVerticalSize(
                                                                  73),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          alignment: Alignment
                                                              .bottomRight),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      288),
                                                              margin: getMargin(
                                                                  left: 6,
                                                                  top: 35,
                                                                  right: 5,
                                                                  bottom: 19),
                                                              padding:
                                                                  getPadding(
                                                                      left: 26,
                                                                      top: 7,
                                                                      right: 26,
                                                                      bottom:
                                                                          7),
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: fs.Svg(
                                                                          ImageConstant
                                                                              .imgGroup761),
                                                                      fit: BoxFit
                                                                          .cover)),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Container(
                                                                        height:
                                                                            getSize(
                                                                                3),
                                                                        width: getSize(
                                                                            3),
                                                                        margin: getMargin(
                                                                            left:
                                                                                23,
                                                                            top:
                                                                                27,
                                                                            bottom:
                                                                                7),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(getHorizontalSize(1)),
                                                                            border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1)))),
                                                                    Spacer(),
                                                                    Container(
                                                                        height:
                                                                            getSize(
                                                                                3),
                                                                        width: getSize(
                                                                            3),
                                                                        margin: getMargin(
                                                                            top:
                                                                                34),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(getHorizontalSize(1)),
                                                                            border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1)))),
                                                                    Container(
                                                                        height:
                                                                            getSize(
                                                                                3),
                                                                        width: getSize(
                                                                            3),
                                                                        margin: getMargin(
                                                                            left:
                                                                                49,
                                                                            top:
                                                                                2,
                                                                            bottom:
                                                                                32),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(getHorizontalSize(1)),
                                                                            border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1)))),
                                                                    Container(
                                                                        height:
                                                                            getSize(
                                                                                3),
                                                                        width: getSize(
                                                                            3),
                                                                        margin: getMargin(
                                                                            left:
                                                                                25,
                                                                            top:
                                                                                8,
                                                                            bottom:
                                                                                26),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(getHorizontalSize(1)),
                                                                            border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1)))),
                                                                    Container(
                                                                        height:
                                                                            getSize(
                                                                                3),
                                                                        width: getSize(
                                                                            3),
                                                                        margin: getMargin(
                                                                            left:
                                                                                48,
                                                                            top:
                                                                                28,
                                                                            bottom:
                                                                                6),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(getHorizontalSize(1)),
                                                                            border: Border.all(color: ColorConstant.indigo900, width: getHorizontalSize(1))))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(3),
                                                              width: getSize(3),
                                                              margin: getMargin(
                                                                  left: 5,
                                                                  bottom: 18),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              1)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .indigo900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(3),
                                                              width: getSize(3),
                                                              margin: getMargin(
                                                                  left: 29,
                                                                  top: 33),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              1)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .indigo900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(3),
                                                              width: getSize(3),
                                                              margin: getMargin(
                                                                  left: 80,
                                                                  bottom: 18),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              1)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .indigo900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(3),
                                                              width: getSize(3),
                                                              margin: getMargin(
                                                                  left: 106,
                                                                  bottom: 18),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              1)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .indigo900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              height:
                                                                  getSize(3),
                                                              width: getSize(3),
                                                              margin: getMargin(
                                                                  top: 34,
                                                                  right: 136),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              1)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .indigo900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              height:
                                                                  getSize(3),
                                                              width: getSize(3),
                                                              margin: getMargin(
                                                                  top: 34,
                                                                  right: 56),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              1)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .indigo900,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                              height:
                                                                  getSize(3),
                                                              width: getSize(3),
                                                              margin: getMargin(
                                                                  right: 4,
                                                                  bottom: 37),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              1)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .indigo900,
                                                                      width: getHorizontalSize(
                                                                          1)))))
                                                    ]))),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: getVerticalSize(173),
                                            width: getHorizontalSize(316),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                316),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    2),
                                                            thickness:
                                                                getVerticalSize(
                                                                    2),
                                                            color: ColorConstant
                                                                .blueGray100))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: SizedBox(
                                                        height: getVerticalSize(
                                                            171),
                                                        child: VerticalDivider(
                                                            width:
                                                                getHorizontalSize(
                                                                    2),
                                                            thickness:
                                                                getVerticalSize(
                                                                    2),
                                                            color: ColorConstant
                                                                .blueGray100))),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding:
                                                        getPadding(left: 16),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                            height: getSize(12),
                                                            width: getSize(12),
                                                            margin: getMargin(
                                                                bottom: 1),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            6)),
                                                                gradient: LinearGradient(
                                                                    begin:
                                                                        Alignment(
                                                                            0.5,
                                                                            0),
                                                                    end: Alignment(0.5, 1),
                                                                    colors: [
                                                                      ColorConstant
                                                                          .greenA200,
                                                                      ColorConstant
                                                                          .lightGreenA700
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 3,
                                                                top: 1),
                                                            child: Text(
                                                                "Gross Salary",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProDisplayMedium10Gray80001)),
                                                        Container(
                                                            height: getSize(12),
                                                            width: getSize(12),
                                                            margin: getMargin(
                                                                left: 11,
                                                                bottom: 1),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            6)),
                                                                gradient: LinearGradient(
                                                                    begin:
                                                                        Alignment(
                                                                            0.5,
                                                                            0),
                                                                    end: Alignment(0.5, 1),
                                                                    colors: [
                                                                      ColorConstant
                                                                          .deepPurpleA100,
                                                                      ColorConstant
                                                                          .indigoA100
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1),
                                                            child: Text("Taxes",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProDisplayMedium10Gray80001)),
                                                        Container(
                                                            height: getSize(12),
                                                            width: getSize(12),
                                                            margin: getMargin(
                                                                left: 11,
                                                                bottom: 1),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .deepPurpleA10001,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(6)))),
                                                        Padding(
                                                          padding: getPadding(
                                                              left: 2, top: 1),
                                                          child: Text(
                                                              "Net Salary",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSFProDisplayMedium10Gray80001),
                                                        ),
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
                                  Padding(
                                    padding: getPadding(left: 12, top: 3),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Jan",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayMedium10Gray80090),
                                        Padding(
                                          padding: getPadding(left: 9),
                                          child: Text("Feb",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSFProDisplayMedium10Gray80090),
                                        ),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text("Mar",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10Gray80090)),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text("Apr",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10Gray80090)),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text("May",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10Gray80090)),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text("Jun",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10Gray80090)),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text("July",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10Gray80090)),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text("Aug",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10Gray80090)),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text("Sep",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10Gray80090)),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text("Oct",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10Gray80090)),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text("Nov",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayMedium10Gray80090)),
                                        Padding(
                                          padding: getPadding(left: 9),
                                          child: Text("Dec",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSFProDisplayMedium10Gray80090),
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
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(left: 16, top: 32),
                  child: Text("Daily Earning",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16Gray900),
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: getPadding(top: 26, right: 102),
                      child: Text("₹349",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold20Gray900))),
              Container(
                height: getVerticalSize(41),
                width: getHorizontalSize(359),
                margin: getMargin(top: 3, bottom: 5),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(right: 2),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(left: 2),
                              child: Container(
                                height: getVerticalSize(13),
                                width: getHorizontalSize(355),
                                decoration: BoxDecoration(
                                    color: ColorConstant.blueGray100,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(6))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(6)),
                                  child: LinearProgressIndicator(
                                    value: 0.69,
                                    backgroundColor: ColorConstant.blueGray100,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        ColorConstant.amber600),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(top: 8),
                              child: Text("0 hr",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: getSize(21),
                        width: getSize(21),
                        margin: getMargin(right: 103),
                        decoration: BoxDecoration(
                          color: ColorConstant.blue900,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(10),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text("EOD",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapGroup305(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
