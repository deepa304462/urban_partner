import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';

import '../add_money_screen/widgets/add_money_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class AddMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leadingWidth: 58,
              leading: AppbarIconbutton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                  },
                  svgPath: ImageConstant.imgGroup295),
              iconTheme: IconThemeData(color: Colors.black),
              centerTitle: true,
              title: AppbarSubtitle1(
                text: "Payment",
              ),
              actions: [
                CustomIconButton(
                    margin: getMargin(right: 30),
                    height: 32,
                    width: 32,
                    variant: IconButtonVariant.FillGreen900,
                    shape: IconButtonShape.CircleBorder15,
                    padding: IconButtonPadding.PaddingAll2,
                    child: CustomImageView(
                        svgPath: ImageConstant.imgIcsharpsupportagent))
              ],
            ),
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Padding(
                              padding: getPadding(left: 20, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Amount to be paid",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium1668),
                                    Container(
                                      height: getVerticalSize(22),
                                      width: getHorizontalSize(67),
                                      margin: getMargin(top: 2, bottom: 1),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgShare,
                                                height: getSize(21),
                                                width: getSize(21),
                                                alignment:
                                                    Alignment.centerLeft),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text("724.00",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular146))
                                          ]),
                                    ),
                                  ]),
                            ),
                            Padding(
                                padding: getPadding(top: 15),
                                child: Divider(
                                    height: getVerticalSize(4),
                                    thickness: getVerticalSize(4),
                                    color: ColorConstant.gray100)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 20, top: 7),
                                    child: Text("Suggested for you",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium1668))),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 15, right: 19),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgDisc1,
                                          height: getSize(25),
                                          width: getSize(25),
                                          margin: getMargin(bottom: 16)),
                                      Padding(
                                          padding: getPadding(left: 6, top: 1),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("Kotak Mahindra Bank UPI",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular146),
                                                Text(
                                                    "Account No.  xxxx xxxx 6746",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsLight1251)
                                              ])),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgTicket,
                                          height: getVerticalSize(27),
                                          width: getHorizontalSize(59),
                                          margin: getMargin(top: 4, bottom: 10))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 23, right: 25),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgDisc2,
                                          height: getSize(25),
                                          width: getSize(25),
                                          margin: getMargin(top: 5, bottom: 9)),
                                      Container(
                                          height: getVerticalSize(39),
                                          width: getHorizontalSize(152),
                                          margin: getMargin(left: 6),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                        "Google Pay UPI",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular146)),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Text(
                                                        "tejasaher67@gmail.com",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsLight1251))
                                              ])),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGooglepay,
                                          height: getSize(36),
                                          width: getSize(36),
                                          margin: getMargin(top: 1, bottom: 1))
                                    ])),
                            Padding(
                                padding: getPadding(top: 21),
                                child: Divider(
                                    height: getVerticalSize(4),
                                    thickness: getVerticalSize(4),
                                    color: ColorConstant.gray100)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 20, top: 14),
                                    child: Text("All other option",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium1668))),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 18, right: 19),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgDisc3,
                                          height: getSize(25),
                                          width: getSize(25),
                                          margin: getMargin(top: 7, bottom: 8)),
                                      Padding(
                                          padding: getPadding(
                                              left: 13, top: 5, bottom: 8),
                                          child: Text("UPI",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular1668)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgBhimupi1,
                                          height: getSize(40),
                                          width: getSize(40))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 18, right: 19),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgDisc3,
                                          height: getSize(25),
                                          width: getSize(25),
                                          margin: getMargin(top: 7, bottom: 8)),
                                      Padding(
                                          padding: getPadding(
                                              left: 13, top: 5, bottom: 8),
                                          child: Text("Wallet",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular1668)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgWallet1,
                                          height: getSize(40),
                                          width: getSize(40))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 18, right: 19),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgDisc3,
                                          height: getSize(25),
                                          width: getSize(25),
                                          margin: getMargin(top: 7, bottom: 8)),
                                      Padding(
                                          padding: getPadding(
                                              left: 13, top: 5, bottom: 8),
                                          child: Text("Credit/ Debit/ ATM Card",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular1668)),
                                      Spacer(),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCreditcard1,
                                          height: getSize(40),
                                          width: getSize(40))
                                    ])),
                            Padding(
                                padding: getPadding(top: 28),
                                child: Divider(
                                    height: getVerticalSize(4),
                                    thickness: getVerticalSize(4),
                                    color: ColorConstant.gray100)),
                            Padding(
                                padding: getPadding(top: 80),
                                child: Divider(
                                    height: getVerticalSize(4),
                                    thickness: getVerticalSize(4),
                                    color: ColorConstant.gray100)),
                            CustomButton(
                                text: "Payment",
                                margin: getMargin(left: 20, top: 18, right: 19),
                                shape: ButtonShape.CircleBorder13,
                                padding: ButtonPadding.PaddingAll19,
                                fontStyle:
                                    ButtonFontStyle.RobotoRomanMedium1668,
                                onTap: () {
                                  onTapPaymentone(context);
                                })
                          ])))
                    ]))));
  }

  onTapPayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.racWalletScreen);
  }

  onTapPaymentone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwentytwoScreen);
  }
}
