import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class AfterActivatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                    },
                    svgPath: ImageConstant.imgGroup295),
                centerTitle: true,
                title: AppbarSubtitle1(text: "My Plan")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 8),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Divider(
                                  height: getVerticalSize(2),
                                  thickness: getVerticalSize(2),
                                  color: ColorConstant.blueGray100),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 22),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: ColorConstant.whiteA700,
                                          width: getHorizontalSize(1)),
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                                  child: Container(
                                      height: getVerticalSize(214),
                                      width: getHorizontalSize(332),
                                      padding: getPadding(
                                          left: 15,
                                          top: 14,
                                          right: 15,
                                          bottom: 14),
                                      decoration: AppDecoration.outlineWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 2),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
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
                                                                  .txtInriaSansBold20),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 7),
                                                              child: Text(
                                                                  "Benefits",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInriaSansBold16)),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      149),
                                                              margin: getMargin(
                                                                  left: 9,
                                                                  top: 7),
                                                              child: Text(
                                                                  "2 Free T-Shirt\nPer lead cost 100 Rs\nNo charge on per job\n1 year validity",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInriaSansBold16)),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              19),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                            "₹1500.0",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInriaSansBold20Black900),
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(24),
                                                                            width: getHorizontalSize(74),
                                                                            margin: getMargin(left: 11),
                                                                            child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                              Align(alignment: Alignment.center, child: Text("₹2500.0", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInriaSansBold20Black900)),
                                                                              Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(bottom: 9), child: SizedBox(width: getHorizontalSize(74), child: Divider(height: getVerticalSize(2), thickness: getVerticalSize(2), color: ColorConstant.black900))))
                                                                            ]))
                                                                      ])))
                                                        ]))),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgMaterialsymbolLightGreen90024x24,
                                                height: getSize(24),
                                                width: getSize(24),
                                                alignment: Alignment.topRight)
                                          ]))),
                              Container(
                                  margin:
                                      getMargin(left: 29, top: 18, right: 29),
                                  padding: getPadding(
                                      left: 108,
                                      top: 39,
                                      right: 108,
                                      bottom: 39),
                                  decoration: AppDecoration.fillTeal800
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder11),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("LEAD BALANCE",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold16),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Text("100",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16WhiteA700))
                                      ])),
                              Container(
                                  width: getHorizontalSize(332),
                                  margin:
                                      getMargin(left: 29, top: 20, right: 29),
                                  padding: getPadding(
                                      left: 89, top: 38, right: 89, bottom: 38),
                                  decoration: AppDecoration.fillDeeppurpleA20001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder11),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Text("WALLET BALANCE",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold16)),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIcbaselinecurrencyrupee,
                                                      height:
                                                          getVerticalSize(24),
                                                      width: getHorizontalSize(
                                                          22)),
                                                  Text("0",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium16WhiteA700)
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 41),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        OutlineGradientButton(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(1),
                                                top: getVerticalSize(1),
                                                right: getHorizontalSize(1),
                                                bottom: getVerticalSize(1)),
                                            strokeWidth: getHorizontalSize(1),
                                            gradient: LinearGradient(
                                                begin: Alignment(0.5, 0),
                                                end: Alignment(0.5, 1),
                                                colors: [
                                                  ColorConstant.blue900,
                                                  ColorConstant.cyan60077
                                                ]),
                                            corners: Corners(
                                                topLeft: Radius.circular(18),
                                                topRight: Radius.circular(18),
                                                bottomLeft: Radius.circular(18),
                                                bottomRight:
                                                    Radius.circular(18)),
                                            child: CustomButton(
                                                height: getVerticalSize(36),
                                                width: getHorizontalSize(98),
                                                text: "Add Lead",
                                                variant: ButtonVariant.Outline,
                                                shape:
                                                    ButtonShape.RoundedBorder17,
                                                padding:
                                                    ButtonPadding.PaddingAll8,
                                                fontStyle: ButtonFontStyle
                                                    .PoppinsMedium16,
                                                onTap: () {
                                                  onTapAddlead(context);
                                                })),
                                        Padding(
                                            padding: getPadding(left: 24),
                                            child: OutlineGradientButton(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(1),
                                                    top: getVerticalSize(1),
                                                    right: getHorizontalSize(1),
                                                    bottom: getVerticalSize(1)),
                                                strokeWidth:
                                                    getHorizontalSize(1),
                                                gradient: LinearGradient(
                                                    begin: Alignment(0.5, 0),
                                                    end: Alignment(0.5, 1),
                                                    colors: [
                                                      ColorConstant.blue900,
                                                      ColorConstant.cyan60077
                                                    ]),
                                                corners: Corners(
                                                    topLeft:
                                                        Radius.circular(18),
                                                    topRight:
                                                        Radius.circular(18),
                                                    bottomLeft:
                                                        Radius.circular(18),
                                                    bottomRight:
                                                        Radius.circular(18)),
                                                child: CustomButton(
                                                    height: getVerticalSize(36),
                                                    width:
                                                        getHorizontalSize(111),
                                                    text: "Add Wallet",
                                                    margin: getMargin(left: 24),
                                                    variant:
                                                        ButtonVariant.Outline,
                                                    shape: ButtonShape
                                                        .RoundedBorder17,
                                                    padding: ButtonPadding
                                                        .PaddingAll8,
                                                    fontStyle: ButtonFontStyle
                                                        .PoppinsMedium16,
                                                    onTap: () {
                                                      onTapAddwallet(context);
                                                    })))
                                      ])),
                              CustomButton(
                                  text: "Change Plan",
                                  margin:
                                      getMargin(left: 52, top: 34, right: 52),
                                  shape: ButtonShape.CircleBorder22,
                                  padding: ButtonPadding.PaddingAll11,
                                  fontStyle:
                                      ButtonFontStyle.PoppinsMedium16WhiteA700,
                                  onTap: () {
                                    onTapChangeplan(context);
                                  })
                            ]))))));
  }

  onTapAddlead(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwentythreeScreen);
  }

  onTapAddwallet(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.racWalletScreen);
  }

  onTapChangeplan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myPlansAfterActivatingScreen);
  }
}
