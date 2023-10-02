// import 'package:flutter/material.dart';
// import 'package:urban_partner/core/app_export.dart';
// import 'package:urban_partner/widgets/custom_button.dart';
//
// class Frame37395Screen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body: Container(
//                 width: double.maxFinite,
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                           width: double.maxFinite,
//                           padding: getPadding(top: 20, bottom: 20),
//                           decoration: AppDecoration.fillWhiteA700.copyWith(
//                               borderRadius: BorderRadiusStyle.customBorderTL36),
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Column(
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Align(
//                                           alignment: Alignment.centerLeft,
//                                           child: Text("Add Credit",
//                                               overflow: TextOverflow.ellipsis,
//                                               textAlign: TextAlign.left,
//                                               style:
//                                                   AppStyle.txtPoppinsMedium18)),
//                                       Container(
//                                           width: getHorizontalSize(275),
//                                           margin: getMargin(top: 4),
//                                           child: Text(
//                                               "Please enter the amount you want to add.",
//                                               maxLines: null,
//                                               textAlign: TextAlign.left,
//                                               style: AppStyle
//                                                   .txtPoppinsRegular16Black900)),
//                                       Padding(
//                                           padding:
//                                               getPadding(top: 18, right: 76),
//                                           child: Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.end,
//                                               children: [
//                                                 CustomImageView(
//                                                     svgPath: ImageConstant
//                                                         .imgMaterialsymbolLightGreen900,
//                                                     height: getSize(24),
//                                                     width: getSize(24)),
//                                                 Text("5000",
//                                                     overflow:
//                                                         TextOverflow.ellipsis,
//                                                     textAlign: TextAlign.left,
//                                                     style: AppStyle
//                                                         .txtPoppinsBold16Lightgreen900)
//                                               ])),
//                                       Padding(
//                                           padding: getPadding(top: 1),
//                                           child: SizedBox(
//                                               width: getHorizontalSize(138),
//                                               child: Divider(
//                                                   height: getVerticalSize(2),
//                                                   thickness: getVerticalSize(2),
//                                                   color:
//                                                       ColorConstant.blueGray100,
//                                                   endIndent:
//                                                       getHorizontalSize(75)))),
//                                       CustomButton(
//                                           width: getHorizontalSize(201),
//                                           text: "Add Money",
//                                           margin: getMargin(top: 48, right: 9),
//                                           shape: ButtonShape.RoundedBorder9,
//                                           padding: ButtonPadding.PaddingAll11,
//                                           fontStyle:
//                                               ButtonFontStyle.InterSemiBold14,
//                                           onTap: () {
//                                             onTapAddmoney(context);
//                                           })
//                                     ]),
//                                 CustomImageView(
//                                     imagePath: ImageConstant.imgPngcliparthum,
//                                     height: getSize(48),
//                                     width: getSize(48),
//                                     radius: BorderRadius.circular(
//                                         getHorizontalSize(24)),
//                                     margin: getMargin(top: 1, bottom: 160))
//                               ]))
//                     ]))));
//   }
//
//   onTapAddmoney(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.addMoneyScreen);
//   }
// }
