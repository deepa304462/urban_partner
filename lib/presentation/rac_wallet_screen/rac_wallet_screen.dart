import '../rac_wallet_screen/widgets/rac_wallet_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class RacWalletScreen extends StatelessWidget {
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
                  onTapProfile(context);
                }),
            centerTitle: true,
            title: AppbarSubtitle1(text: "RAC Wallet")),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(top: 8, bottom: 8),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Divider(
                  height: getVerticalSize(2),
                  thickness: getVerticalSize(2),
                  color: ColorConstant.blueGray100),
              Container(
                  margin: getMargin(left: 16, top: 22, right: 16),
                  padding:
                      getPadding(left: 110, top: 38, right: 110, bottom: 38),
                  decoration: AppDecoration.fillTeal800.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder11),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("WALLET BALANCE",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold16),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant
                                          .imgIcbaselinecurrencyrupee,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Text("0",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsMedium16WhiteA700)
                                ]))
                      ])),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 16, top: 44),
                      child: Text("Payment Details",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold16))),
              Container(
                child: Container(
                  margin: getMargin(right: 15, left: 15, top: 15),
                  padding: getPadding(
                    left: 10,
                    top: 17,
                    right: 10,
                    bottom: 17,
                  ),
                  decoration: AppDecoration.outlineBluegray1003.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 8,
                              ),
                              child: Text(
                                "Withdrew",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold14,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "-5000",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold16Red900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 13,
                          top: 4,
                          bottom: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "DD/MM/YYYY",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular14,
                            ),
                            Text(
                              "12 : 15 PM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                      padding: getPadding(left: 16, top: 12, right: 16),
                      child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(12));
                          },
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return RacWalletItemWidget();
                          })))
            ])),
        bottomNavigationBar: CustomButton(
          width: getHorizontalSize(201),
          text: "Add Money",
          margin: getMargin(left: 95, right: 94, bottom: 28),
          shape: ButtonShape.RoundedBorder9,
          padding: ButtonPadding.PaddingAll11,
          fontStyle: ButtonFontStyle.InterSemiBold14,
          onTap: () {
            bottomSheet(context);
          },
        ),
      ),
    );
  }

  //
  onTapAddmoney(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37395Screen);
  }

  onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
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
