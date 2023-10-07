import 'package:urban_partner/models/register_model.dart';

import '../home_two_screen/widgets/listservice3_item_widget.dart';
import '../home_two_screen/widgets/listservice4_item_widget.dart';
import '../home_two_screen/widgets/listservice5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_button_1.dart';
import 'package:urban_partner/widgets/app_bar/appbar_button_2.dart';
import 'package:urban_partner/widgets/app_bar/appbar_image_1.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_7.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_8.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_9.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class HomeTwoScreen extends StatefulWidget {
  RegisterModel registerModel = RegisterModel();
  @override
  State<HomeTwoScreen> createState() => _HomeTwoScreenState();
}

class _HomeTwoScreenState extends State<HomeTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(80),
                leadingWidth: 87,
                leading: AppbarImage1(
                    height: getVerticalSize(74),
                    width: getHorizontalSize(71),
                    imagePath: ImageConstant.imgEllipse136,
                    margin: getMargin(left: 16)),
                title: Container(
                    margin: getMargin(top: 5, right: 78, bottom: 17),
                    decoration: AppDecoration.stack11,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarSubtitle7(
                              text: "Lead Wallet",
                              margin: getMargin(left: 141)),
                          AppbarSubtitle8(
                              text: widget.registerModel.data!.fullName.toString(),
                              margin: getMargin(right: 139), style: TextStyle(),),
                          AppbarSubtitle9(
                              text: "Mukundpur,",
                              margin: getMargin(top: 6, right: 146), style: TextStyle(),)
                        ])),
                actions: [
                  Container(
                      margin: getMargin(left: 143),
                      decoration: AppDecoration.stack11,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppbarButton1(margin: getMargin(left: 69)),
                            AppbarButton2(margin: getMargin(left: 69, top: 8)),
                            AppbarSubtitle7(
                                text: "RAC Wallet",
                                margin: getMargin(right: 78, bottom: 5))
                          ]))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 10),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 8, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 22,
                                                top: 4,
                                                right: 22,
                                                bottom: 4),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder25),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          100),
                                                      margin: getMargin(top: 1),
                                                      child: Text(
                                                          "Total Earned: \nRs 10,000",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.45))))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgComputer,
                                            height: getVerticalSize(20),
                                            width: getHorizontalSize(19),
                                            margin:
                                                getMargin(top: 12, bottom: 18)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgPhshoppingcartfill,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(
                                                left: 16, top: 8, bottom: 18))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 29, right: 17),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Text("Jobs missed by you",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterBold16)),
                                        Container(
                                            height: getVerticalSize(25),
                                            width: getHorizontalSize(92),
                                            margin: getMargin(bottom: 1),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
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
                                                                          .underline))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          height: getSize(8),
                                                          width: getSize(8),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .red900,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          4)))))
                                                ]))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 13, right: 16),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Listservice3ItemWidget();
                                      })),
                              Container(
                                  height: getVerticalSize(266),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 16),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, right: 16),
                                                child: ListView.separated(
                                                    physics:
                                                        NeverScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    separatorBuilder:
                                                        (context, index) {
                                                      return SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  16));
                                                    },
                                                    itemCount: 2,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Listservice4ItemWidget();
                                                    }))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: double.maxFinite,
                                                      padding: getPadding(
                                                          top: 18, bottom: 18),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              40,
                                                                          width:
                                                                              40,
                                                                          variant: IconButtonVariant
                                                                              .FillBlue900,
                                                                          padding: IconButtonPadding
                                                                              .PaddingAll8,
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgFrame)),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Text(
                                                                              "New Job",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMulishRomanBlack10))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              40,
                                                                          width:
                                                                              40,
                                                                          variant: IconButtonVariant
                                                                              .FillBlack9007f,
                                                                          padding: IconButtonPadding
                                                                              .PaddingAll8,
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgRefresh)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "Ongoing",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMulishRomanBold10))
                                                                    ])),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapColumncheckmark(
                                                                      context);
                                                                },
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 8,
                                                                        bottom:
                                                                            1),
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          CustomIconButton(
                                                                              height: 40,
                                                                              width: 40,
                                                                              margin: getMargin(left: 5),
                                                                              variant: IconButtonVariant.FillBlack9007f,
                                                                              padding: IconButtonPadding.PaddingAll8,
                                                                              child: CustomImageView(svgPath: ImageConstant.imgCheckmark)),
                                                                          Text(
                                                                              "RAC Around",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMulishRomanBold10)
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              40,
                                                                          width:
                                                                              40,
                                                                          margin: getMargin(
                                                                              right:
                                                                                  1),
                                                                          variant: IconButtonVariant
                                                                              .FillBlack9007f,
                                                                          padding: IconButtonPadding
                                                                              .PaddingAll8,
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgFrameWhiteA700)),
                                                                      Text(
                                                                          "Shopping",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMulishRomanBold10)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8,
                                                                        bottom:
                                                                            1),
                                                                child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              40,
                                                                          width:
                                                                              40,
                                                                          variant: IconButtonVariant
                                                                              .FillBlack9007f,
                                                                          padding: IconButtonPadding
                                                                              .PaddingAll8,
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgFrameWhiteA70040x40)),
                                                                      Text(
                                                                          "Profile",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMulishRomanBold10)
                                                                    ]))
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(45),
                                                      width: double.maxFinite,
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray100))
                                                ]))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 16, right: 16),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Listservice5ItemWidget();
                                      }))
                            ]))))));
  }

  onTapColumncheckmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
  }
}
