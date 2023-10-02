import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_image.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_10.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_drop_down.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class Iphone14SeventeenScreen extends StatelessWidget {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            57,
          ),
          title: Container(
            width: getHorizontalSize(
              109,
            ),
            margin: getMargin(
              left: 20,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Good morning\n",
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: "Anil Kumar",
                    style: TextStyle(
                      color: ColorConstant.blue900,
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          actions: [
            Container(
              margin: getMargin(
                left: 14,
                top: 12,
                right: 14,
                bottom: 13,
              ),
              padding: getPadding(
                left: 10,
                top: 6,
                right: 10,
                bottom: 6,
              ),
              decoration: AppDecoration.fillAmber200.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppbarImage(
                    height: getVerticalSize(
                      12,
                    ),
                    width: getHorizontalSize(
                      11,
                    ),
                    svgPath: ImageConstant.imgClock,
                    margin: getMargin(
                      top: 3,
                      bottom: 2,
                    ),
                  ),
                  AppbarImage(
                    height: getVerticalSize(
                      10,
                    ),
                    width: getHorizontalSize(
                      7,
                    ),
                    svgPath: ImageConstant.imgCallBlue900,
                    margin: getMargin(
                      left: 7,
                      top: 3,
                      bottom: 4,
                    ),
                  ),
                  AppbarSubtitle10(
                    text: "5,000",
                    margin: getMargin(
                      left: 2,
                      top: 3,
                      bottom: 2,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 7,
                    ),
                    child: SizedBox(
                      height: getVerticalSize(
                        18,
                      ),
                      child: VerticalDivider(
                        width: getHorizontalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: ColorConstant.blue900,
                      ),
                    ),
                  ),
                  AppbarImage(
                    height: getSize(
                      10,
                    ),
                    width: getSize(
                      10,
                    ),
                    svgPath: ImageConstant.imgCar,
                    margin: getMargin(
                      left: 6,
                      top: 4,
                      bottom: 3,
                    ),
                  ),
                  AppbarImage(
                    height: getVerticalSize(
                      10,
                    ),
                    width: getHorizontalSize(
                      7,
                    ),
                    svgPath: ImageConstant.imgCallBlue900,
                    margin: getMargin(
                      left: 7,
                      top: 3,
                      bottom: 4,
                    ),
                  ),
                  AppbarSubtitle10(
                    text: "0",
                    margin: getMargin(
                      left: 2,
                      top: 2,
                      bottom: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 20,
                    right: 14,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse13657x55,
                        height: getVerticalSize(
                          57,
                        ),
                        width: getHorizontalSize(
                          55,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            28,
                          ),
                        ),
                      ),
                      CustomDropDown(
                        width: getHorizontalSize(
                          200,
                        ),
                        focusNode: FocusNode(),
                        icon: Container(
                          margin: getMargin(
                            left: 8,
                            right: 16,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                          ),
                        ),
                        hintText: "Noida, sector 142",
                        margin: getMargin(
                          left: 20,
                          top: 8,
                          bottom: 8,
                        ),
                        variant: DropDownVariant.OutlineGray300,
                        shape: DropDownShape.RoundedBorder20,
                        padding: DropDownPadding.PaddingT11,
                        fontStyle: DropDownFontStyle.RalewayMedium15,
                        items: dropdownItemList,
                        prefix: Container(
                          margin: getMargin(
                            left: 16,
                            top: 13,
                            right: 8,
                            bottom: 13,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgLocation,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            41,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getVerticalSize(
                          20,
                        ),
                        width: getHorizontalSize(
                          19,
                        ),
                        margin: getMargin(
                          top: 18,
                          bottom: 19,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 34,
                    ),
                    child: Text(
                      "New Jobs",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMulishRomanBlack16,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    370,
                  ),
                  margin: getMargin(
                    left: 10,
                    top: 10,
                    right: 10,
                  ),
                  padding: getPadding(
                    left: 14,
                    top: 11,
                    right: 14,
                    bottom: 11,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Split AC jet Service",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold14,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "₹349",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold13,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 26,
                              ),
                              child: Text(
                                "Area Name",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold13,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 15,
                              ),
                              child: Text(
                                "Pincode",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            181,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.blue900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: getSize(
                                4,
                              ),
                              width: getSize(
                                4,
                              ),
                              margin: getMargin(
                                top: 6,
                                bottom: 18,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.black900,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    2,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                183,
                              ),
                              margin: getMargin(
                                left: 12,
                              ),
                              child: Text(
                                "Accurate diagnosis & same day resolution after detailed inspection",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                          right: 18,
                          bottom: 56,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: getSize(
                                4,
                              ),
                              width: getSize(
                                4,
                              ),
                              margin: getMargin(
                                top: 5,
                                bottom: 25,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.black900,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    2,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                196,
                              ),
                              margin: getMargin(
                                left: 12,
                                bottom: 9,
                              ),
                              child: Text(
                                "Visit charges of ₹299 will be adjusted\nin the final bill",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium11,
                              ),
                            ),
                            CustomButton(
                              width: getHorizontalSize(
                                68,
                              ),
                              text: "Add",
                              margin: getMargin(
                                left: 40,
                                top: 6,
                              ),
                              variant: ButtonVariant.OutlineBlack90026,
                              fontStyle: ButtonFontStyle.PoppinsBold14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 278,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      2,
                    ),
                    thickness: getVerticalSize(
                      2,
                    ),
                    color: ColorConstant.gray20001,
                    indent: getHorizontalSize(
                      20,
                    ),
                    endIndent: getHorizontalSize(
                      20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 17,
                    ),
                    child: Text(
                      "Most Booked Services",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMulishRomanBlack16,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 15,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      2,
                    ),
                    thickness: getVerticalSize(
                      2,
                    ),
                    color: ColorConstant.black90087,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 13,
                    top: 7,
                    right: 13,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: IntrinsicWidth(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgWhatsappimage20230315,
                                      height: getVerticalSize(
                                        155,
                                      ),
                                      width: getHorizontalSize(
                                        271,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          16,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgWhatsappimage20230315,
                                      height: getVerticalSize(
                                        155,
                                      ),
                                      width: getHorizontalSize(
                                        271,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          16,
                                        ),
                                      ),
                                      margin: getMargin(
                                        left: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Split AC",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMulishRomanBlack14,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 3,
                                      ),
                                      child: Text(
                                        "Jet Service ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanBlack14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Start with",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium1608,
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgVectorBlack900,
                                      height: getVerticalSize(
                                        13,
                                      ),
                                      width: getHorizontalSize(
                                        9,
                                      ),
                                      margin: getMargin(
                                        left: 9,
                                        top: 5,
                                        bottom: 5,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                        top: 2,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "499",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtMulishRomanSemiBold1608,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgVectorBlack900,
                                      height: getVerticalSize(
                                        13,
                                      ),
                                      width: getHorizontalSize(
                                        9,
                                      ),
                                      margin: getMargin(
                                        left: 10,
                                        top: 5,
                                        bottom: 5,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                        top: 2,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "599",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMulishRomanSemiBold1608Black90033
                                            .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough,
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: IntrinsicWidth(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: getHorizontalSize(
                                    77,
                                  ),
                                  margin: getMargin(
                                    top: 165,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Split AC",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanBlack14,
                                      ),
                                      Text(
                                        "Jet Service ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanBlack14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Start with",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium1608,
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgVectorBlack900,
                                        height: getVerticalSize(
                                          13,
                                        ),
                                        width: getHorizontalSize(
                                          9,
                                        ),
                                        margin: getMargin(
                                          left: 9,
                                          top: 5,
                                          bottom: 5,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 4,
                                          top: 2,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "499",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMulishRomanSemiBold1608,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgVectorBlack900,
                                        height: getVerticalSize(
                                          13,
                                        ),
                                        width: getHorizontalSize(
                                          9,
                                        ),
                                        margin: getMargin(
                                          left: 10,
                                          top: 5,
                                          bottom: 5,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 4,
                                          top: 2,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "599",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMulishRomanSemiBold1608Black90033
                                              .copyWith(
                                            decoration:
                                                TextDecoration.lineThrough,
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
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 14,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      2,
                    ),
                    thickness: getVerticalSize(
                      2,
                    ),
                    color: ColorConstant.gray20001,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 19,
                    ),
                    child: Text(
                      "Special offers",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMulishRomanBlack16,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      2,
                    ),
                    thickness: getVerticalSize(
                      2,
                    ),
                    color: ColorConstant.gray20001,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 7,
                    top: 13,
                    right: 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.whiteA700,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorConstant.blueGray100,
                            width: getHorizontalSize(
                              1,
                            ),
                          ),
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Container(
                          height: getSize(
                            188,
                          ),
                          width: getSize(
                            188,
                          ),
                          decoration:
                              AppDecoration.outlineBluegray1001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4344,
                                height: getSize(
                                  188,
                                ),
                                width: getSize(
                                  188,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    10,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                      ),
                                      child: Text(
                                        "AC Service offer",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold15,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: getPadding(
                                          left: 123,
                                          top: 106,
                                          right: 8,
                                        ),
                                        child: IntrinsicWidth(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgVectorBlack900,
                                                height: getVerticalSize(
                                                  12,
                                                ),
                                                width: getHorizontalSize(
                                                  8,
                                                ),
                                                margin: getMargin(
                                                  top: 2,
                                                  bottom: 3,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 2,
                                                ),
                                                child: Text(
                                                  "50,000",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanMedium14Black900,
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                "50,000",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMulishRomanMedium14Black900,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      padding: getPadding(
                                        top: 2,
                                      ),
                                      child: IntrinsicWidth(
                                        child: Container(
                                          decoration: AppDecoration.fillBlue900,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 6,
                                                  bottom: 6,
                                                ),
                                                child: Text(
                                                  "Book Now",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold16WhiteA700,
                                                ),
                                              ),
                                              Container(
                                                height: getVerticalSize(
                                                  33,
                                                ),
                                                width: getHorizontalSize(
                                                  188,
                                                ),
                                                margin: getMargin(
                                                  left: 70,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.blue900,
                                                ),
                                              ),
                                            ],
                                          ),
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
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.whiteA700,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorConstant.blueGray100,
                            width: getHorizontalSize(
                              1,
                            ),
                          ),
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            188,
                          ),
                          width: getHorizontalSize(
                            178,
                          ),
                          decoration:
                              AppDecoration.outlineBluegray1001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle4345,
                                height: getVerticalSize(
                                  188,
                                ),
                                width: getHorizontalSize(
                                  178,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    10,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: getPadding(
                                    left: 9,
                                    right: 9,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "AC Service offer",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold15,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgVectorBlack900,
                                        height: getVerticalSize(
                                          12,
                                        ),
                                        width: getHorizontalSize(
                                          8,
                                        ),
                                        margin: getMargin(
                                          top: 109,
                                          right: 37,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                          right: 35,
                                          bottom: 6,
                                        ),
                                        child: Text(
                                          "Book Now",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterBold16WhiteA700,
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
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 23,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      2,
                    ),
                    thickness: getVerticalSize(
                      2,
                    ),
                    color: ColorConstant.gray20001,
                    indent: getHorizontalSize(
                      20,
                    ),
                    endIndent: getHorizontalSize(
                      20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 8,
                    ),
                    child: Text(
                      "Commercial Repair Service",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold16Gray900,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    379,
                  ),
                  margin: getMargin(
                    left: 6,
                    top: 4,
                    right: 5,
                  ),
                  padding: getPadding(
                    left: 21,
                    top: 19,
                    right: 21,
                    bottom: 19,
                  ),
                  decoration: AppDecoration.fillWhiteA70001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 1,
                          top: 2,
                          right: 93,
                        ),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 59,
                              width: 59,
                              variant: IconButtonVariant.FillGray100,
                              shape: IconButtonShape.RoundedBorder29,
                              padding: IconButtonPadding.PaddingAll8,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgGroup52,
                              ),
                            ),
                            CustomIconButton(
                              height: 59,
                              width: 59,
                              margin: getMargin(
                                left: 32,
                              ),
                              variant: IconButtonVariant.FillGray100,
                              shape: IconButtonShape.RoundedBorder29,
                              padding: IconButtonPadding.PaddingAll5,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgKindpng5787273,
                              ),
                            ),
                            CustomIconButton(
                              height: 59,
                              width: 59,
                              margin: getMargin(
                                left: 32,
                              ),
                              variant: IconButtonVariant.FillGray100,
                              shape: IconButtonShape.RoundedBorder29,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgKindpng5787273,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                          right: 91,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: getHorizontalSize(
                                63,
                              ),
                              child: Text(
                                "AC\nCommercial",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtMulishRomanExtraBold11,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                65,
                              ),
                              margin: getMargin(
                                left: 26,
                              ),
                              child: Text(
                                "Refrigerator\nCommercial",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtMulishRomanExtraBold11,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                63,
                              ),
                              margin: getMargin(
                                left: 26,
                              ),
                              child: Text(
                                "Kitchen\nCommercial",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtMulishRomanExtraBold11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle877,
                  height: getVerticalSize(
                    210,
                  ),
                  width: getHorizontalSize(
                    350,
                  ),
                  margin: getMargin(
                    top: 11,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 11,
                    ),
                    child: Text(
                      "Mechanic Repair Service",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold16Gray900,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    379,
                  ),
                  margin: getMargin(
                    left: 6,
                    top: 5,
                    right: 5,
                  ),
                  padding: getPadding(
                    left: 23,
                    top: 16,
                    right: 23,
                    bottom: 16,
                  ),
                  decoration: AppDecoration.fillWhiteA70001,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 59,
                              width: 59,
                              variant: IconButtonVariant.FillGray100,
                              shape: IconButtonShape.RoundedBorder29,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgKindpng5787273,
                              ),
                            ),
                            CustomIconButton(
                              height: 59,
                              width: 59,
                              margin: getMargin(
                                left: 32,
                              ),
                              variant: IconButtonVariant.FillGray100,
                              shape: IconButtonShape.RoundedBorder29,
                              padding: IconButtonPadding.PaddingAll8,
                              child: CustomImageView(
                                svgPath: ImageConstant.img552831,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                          top: 7,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: getHorizontalSize(
                                42,
                              ),
                              child: Text(
                                "Bike\nService",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtMulishRomanExtraBold12,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                42,
                              ),
                              margin: getMargin(
                                left: 48,
                              ),
                              child: Text(
                                "Car\nService",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtMulishRomanExtraBold12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle877,
                  height: getVerticalSize(
                    210,
                  ),
                  width: getHorizontalSize(
                    350,
                  ),
                  margin: getMargin(
                    top: 28,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    406,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: getVerticalSize(
                            328,
                          ),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img71z2112w009n00167cp667,
                        height: getVerticalSize(
                          218,
                        ),
                        width: getHorizontalSize(
                          390,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
