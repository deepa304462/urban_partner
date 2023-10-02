import 'package:urban_partner/presentation/after_activating_screen/after_activating_screen.dart';
import 'package:urban_partner/presentation/home_screen/widgets/listservice1_item_widget.dart';
import 'package:urban_partner/presentation/home_screen/widgets/listservice2_item_widget.dart';
import 'package:urban_partner/presentation/home_screen/widgets/listservice_item_widget.dart';
import 'package:urban_partner/presentation/iphone_14_twentythree_screen/iphone_14_twentythree_screen.dart';
import 'package:urban_partner/presentation/my_plans_after_activating_screen/my_plans_after_activating_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_11.dart';

import '../home_one_screen/widgets/home_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_button_1.dart';
import 'package:urban_partner/widgets/app_bar/appbar_button_2.dart';
import 'package:urban_partner/widgets/app_bar/appbar_image_1.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_7.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_8.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_9.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class HomeOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  AppbarImage1(
                    height: getVerticalSize(
                      74,
                    ),
                    width: getHorizontalSize(
                      71,
                    ),
                    imagePath: ImageConstant.imgEllipse136,
                    margin: getMargin(
                      left: 16,
                    ),
                  ),
                  Column(
                    children: [
                      AppbarSubtitle8(
                        text: "Anil Kumar",
                        margin: getMargin(),
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      AppbarSubtitle9(
                        text: "Mukundpur,",
                        margin: getMargin(
                          top: 6,
                        ),
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      AppbarSubtitle11(
                        text: "4.5",
                        margin: getMargin(
                          top: 6,
                          right: 9
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 73.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          AppbarSubtitle7(
                            onTap: () {
                              bottomSheet(context);
                            },
                            text: "Lead Wallet",
                            margin: getMargin(),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          AppbarButton1(
                            onTap: () {
                              bottomSheet(context);
                            },
                            margin: getMargin(
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AppbarSubtitle7(
                            onTap: () {
                              bottomSheet2(context);
                            },
                            text: "RAC Wallet",
                            margin: getMargin(),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          AppbarButton2(
                            onTap: () {
                              bottomSheet2(context);
                            },
                            margin: getMargin(),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 44,
                    width: 123,
                    padding: getPadding(
                      left: 18,
                      top: 5,
                      bottom: 5,
                      right: 18,
                    ),
                    decoration: AppDecoration.fillGreenA20001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder28,
                      color: Color(0xFF72FFBB)
                    ),
                    child: Text(
                      "Total Earned:\n   Rs, 10,000",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: Colors.black
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: getPadding(top: 2),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=>AfterActivatingScreen()));
                                        // bottomSheet(context);
                                      },
                                      child: Container(
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(139),
                                        decoration:
                                            AppDecoration.outlineBlack9003f1,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Card(
                                                      // clipBehavior: Clip.antiAlias,
                                                      elevation: 3,
                                                      margin: EdgeInsets.all(0),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder2),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(40),
                                                          width:
                                                              getHorizontalSize(
                                                                  80),
                                                          decoration: AppDecoration
                                                              .gradientOrange700YellowA400
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder2),
                                                          child: Stack(children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup15,
                                                                height:
                                                                    getVerticalSize(
                                                                        40),
                                                                width:
                                                                    getHorizontalSize(
                                                                        80),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            2)),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])))),
                                              Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Padding(
                                                  padding: getPadding(bottom: 1),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("Silver Plan",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInriaSansBold47),
                                                              Text("Benefits",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInriaSansRegular376),
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          44),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              2),
                                                                  child: Text(
                                                                      "2 Free T-Shirt\nPer lead cost 100 Rs\nNo charge on per job\n1 year validity",
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInriaSansRegular376)),
                                                              Align(
                                                                  alignment: Alignment
                                                                      .centerRight,
                                                                  child: Text(
                                                                      "₹1500.0",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInriaSansBold47Black900))
                                                            ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 3, top: 29),
                                                            child: Text("₹2500.0",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInriaSansBold47Black900))
                                                      ]),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                        padding: getPadding(left: 10, top: 1),
                                        child: Text("Gold",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMulishRomanBlack13.copyWith(
                                                  fontFamily: 'Mulish',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w900,
                                                ),))
                                  ],
                                ),
                                CustomImageView(
                                    svgPath: ImageConstant.imgComputer,
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(19),
                                    margin: getMargin(
                                        left: 28, top: 12, bottom: 8)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgPhshoppingcartfill,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin:
                                        getMargin(left: 16, top: 8, bottom: 8))
                              ])),
                    ],
                  )
                ],
              ),
              Padding(
                  padding: getPadding(left: 16, top: 9, right: 17),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(top: 3),
                            child: Text("5 New Jobs",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold16.copyWith(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),)),
                        Container(
                            height: getVerticalSize(23),
                            width: getHorizontalSize(92),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtMissedjob(
                                            context);
                                      },
                                      child: Text("Missed Job",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterMedium16Blue900
                                              .copyWith(
                                            fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  decoration: TextDecoration
                                                      .underline)))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      height: getSize(8),
                                      width: getSize(8),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.red600,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(4)))))
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
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return ListserviceItemWidget(onTapReject: () {
                          onTapReject(context);
                        }, onTapAccept: () {
                          onTapAccept(context);
                        });
                      })),

              Padding(
                  padding: getPadding(left: 17, top: 14, right: 22),
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: getVerticalSize(14));
                      },
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Listservice2ItemWidget(onTapReject: () {
                          onTapReject(context);
                        }, onTapAccept: () {
                          onTapAccept(context);
                        });
                      })),

            ],
          ),
        ),
      ),

    ));
  }

  onTapAddlead(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37396Screen);
  }

  onTapReject(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  onTapAccept(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }

  onTapTxtMissedjob(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.missedJobsScreen);
  }

  // onTapColumnrefresh(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  // }

  // onTapColumnframetwo(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.profileScreen);
  // }
  // onTapRaCScreen(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.racAroundScreen);
  // }
  // onTapShoppingPanel(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.shoppingPanelScreen);
  // }
}
void bottomSheet(context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: double.maxFinite,
          padding: getPadding(top: 20, bottom: 20),
          decoration: AppDecoration.fillWhiteA700
              .copyWith(borderRadius: BorderRadiusStyle.customBorderTL36),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Text("Add Credit",
                      //     overflow: TextOverflow.ellipsis,
                      //     textAlign: TextAlign.left,
                      //     style: AppStyle.txtPoppinsMedium18),
                      Container(
                          width: getHorizontalSize(275),
                          margin: getMargin(top: 1),
                          child: Text("Add Leads",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18)),
                      Container(
                          width: getHorizontalSize(275),
                          margin: getMargin(top: 4),
                          child: Text("Please enter the leads you want to add.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Black900)),
                      Padding(
                          padding: getPadding(top: 18, right: 95),
                          child: Text("10",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16Lightgreen900)),
                      Padding(
                          padding: getPadding(top: 1),
                          child: SizedBox(
                              width: getHorizontalSize(138),
                              child: Divider(
                                  height: getVerticalSize(2),
                                  thickness: getVerticalSize(2),
                                  color: ColorConstant.blueGray100,
                                  endIndent: getHorizontalSize(75)))),
                      CustomButton(
                          width: getHorizontalSize(201),
                          text: "Submit",
                          margin: getMargin(top: 48, right: 9),
                          shape: ButtonShape.RoundedBorder9,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterSemiBold14,
                          onTap: () {
                            onTapPaymentone(context);
                          })
                    ]),
                CustomImageView(
                    imagePath: ImageConstant.imgPngcliparthum,
                    height: getSize(48),
                    width: getSize(48),
                    radius: BorderRadius.circular(getHorizontalSize(24)),
                    margin: getMargin(top: 1, bottom: 160))
              ]),
        ),
      ]),
    ),
  );
}

void bottomSheet2(context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: double.maxFinite,
          padding: getPadding(top: 20, bottom: 20),
          decoration: AppDecoration.fillWhiteA700
              .copyWith(borderRadius: BorderRadiusStyle.customBorderTL36),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Text("Add Credit",
                      //     overflow: TextOverflow.ellipsis,
                      //     textAlign: TextAlign.left,
                      //     style: AppStyle.txtPoppinsMedium18),
                      Container(
                          width: getHorizontalSize(275),
                          margin: getMargin(top: 1),
                          child: Text("Add Credit",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18)),
                      Container(
                          width: getHorizontalSize(275),
                          margin: getMargin(top: 4),
                          child: Text(
                              "Please enter the amount you want to add.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Black900)),
                      Padding(
                          padding: getPadding(top: 18, right: 76),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgMaterialsymbolLightGreen900,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Text("5000",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    AppStyle.txtPoppinsBold16Lightgreen900)
                              ])),
                      Padding(
                          padding: getPadding(top: 1),
                          child: SizedBox(
                              width: getHorizontalSize(138),
                              child: Divider(
                                  height: getVerticalSize(2),
                                  thickness: getVerticalSize(2),
                                  color: ColorConstant.blueGray100,
                                  endIndent: getHorizontalSize(75)))),
                      CustomButton(
                        width: getHorizontalSize(201),
                        text: "Add Money",
                        margin: getMargin(top: 48, right: 9),
                        shape: ButtonShape.RoundedBorder9,
                        padding: ButtonPadding.PaddingAll11,
                        fontStyle: ButtonFontStyle.InterSemiBold14,
                        onTap: () {
                          onTapAddmoney(context);
                        },
                      )
                    ]),
                CustomImageView(
                    imagePath: ImageConstant.imgPngcliparthum,
                    height: getSize(48),
                    width: getSize(48),
                    radius: BorderRadius.circular(getHorizontalSize(24)),
                    margin: getMargin(top: 1, bottom: 160))
              ]),
        ),
      ]),
    ),
  );
}
onTapAddmoney(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.addMoneyScreen);
}