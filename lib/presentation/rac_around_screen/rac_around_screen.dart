import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

class RacAroundScreen extends StatelessWidget {
  TextEditingController frame37404Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            66,
          ),
          leadingWidth: 58,
          leading: AppbarIconbutton(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
            },
            svgPath: ImageConstant.imgGroup295,
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "RAC Around",
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 8,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Divider(
                    height: getVerticalSize(
                      2,
                    ),
                    thickness: getVerticalSize(
                      2,
                    ),
                    color: ColorConstant.blueGray100,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 11,
                    ),
                    child: Text(
                      "RAC Repair Around you",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      853,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 32,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              657,
                            ),
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImages51,
                                  height: getVerticalSize(
                                    657,
                                  ),
                                  width: getHorizontalSize(
                                    390,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: getHorizontalSize(
                                                33,
                                              ),
                                              margin: getMargin(
                                                bottom: 16,
                                              ),
                                              padding: getPadding(
                                                left: 4,
                                                top: 3,
                                                right: 4,
                                                bottom: 3,
                                              ),
                                              decoration: AppDecoration.txtDddd
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder11,
                                              ),
                                              child: Text(
                                                "Delhi",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular10,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationRed900,
                                              height: getVerticalSize(
                                                16,
                                              ),
                                              width: getHorizontalSize(
                                                13,
                                              ),
                                              margin: getMargin(
                                                top: 19,
                                                bottom: 4,
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                36,
                                              ),
                                              width: getHorizontalSize(
                                                49,
                                              ),
                                              margin: getMargin(
                                                left: 8,
                                                top: 3,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocationRed900,
                                                    height: getVerticalSize(
                                                      16,
                                                    ),
                                                    width: getHorizontalSize(
                                                      13,
                                                    ),
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Container(
                                                      width: getHorizontalSize(
                                                        38,
                                                      ),
                                                      padding: getPadding(
                                                        left: 4,
                                                        top: 3,
                                                        right: 4,
                                                        bottom: 3,
                                                      ),
                                                      decoration: AppDecoration
                                                          .txtDddd
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder11,
                                                      ),
                                                      child: Text(
                                                        "Noida",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular10,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 9,
                                          top: 6,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: getVerticalSize(
                                                35,
                                              ),
                                              width: getHorizontalSize(
                                                72,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocationRed900,
                                                    height: getVerticalSize(
                                                      16,
                                                    ),
                                                    width: getHorizontalSize(
                                                      13,
                                                    ),
                                                    alignment:
                                                        Alignment.topRight,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                      width: getHorizontalSize(
                                                        60,
                                                      ),
                                                      padding: getPadding(
                                                        left: 4,
                                                        top: 3,
                                                        right: 4,
                                                        bottom: 3,
                                                      ),
                                                      decoration: AppDecoration
                                                          .txtDddd
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder11,
                                                      ),
                                                      child: Text(
                                                        "Faridabad",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular10,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationRed900,
                                              height: getVerticalSize(
                                                16,
                                              ),
                                              width: getHorizontalSize(
                                                13,
                                              ),
                                              margin: getMargin(
                                                left: 13,
                                                top: 16,
                                                bottom: 2,
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                57,
                                              ),
                                              margin: getMargin(
                                                bottom: 12,
                                              ),
                                              padding: getPadding(
                                                left: 4,
                                                top: 3,
                                                right: 4,
                                                bottom: 3,
                                              ),
                                              decoration: AppDecoration.txtDddd
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder11,
                                              ),
                                              child: Text(
                                                "Gaziabad",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: getVerticalSize(
                                            36,
                                          ),
                                          width: getHorizontalSize(
                                            53,
                                          ),
                                          margin: getMargin(
                                            top: 63,
                                            right: 80,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgLocationRed900,
                                                height: getVerticalSize(
                                                  16,
                                                ),
                                                width: getHorizontalSize(
                                                  13,
                                                ),
                                                alignment: Alignment.bottomLeft,
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  width: getHorizontalSize(
                                                    46,
                                                  ),
                                                  padding: getPadding(
                                                    left: 4,
                                                    top: 3,
                                                    right: 4,
                                                    bottom: 3,
                                                  ),
                                                  decoration: AppDecoration
                                                      .txtDddd
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder11,
                                                  ),
                                                  child: Text(
                                                    "Kolkata",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular10,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          36,
                                        ),
                                        width: getHorizontalSize(
                                          61,
                                        ),
                                        margin: getMargin(
                                          top: 23,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationRed900,
                                              height: getVerticalSize(
                                                16,
                                              ),
                                              width: getHorizontalSize(
                                                13,
                                              ),
                                              alignment: Alignment.bottomLeft,
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                width: getHorizontalSize(
                                                  52,
                                                ),
                                                padding: getPadding(
                                                  left: 4,
                                                  top: 3,
                                                  right: 4,
                                                  bottom: 3,
                                                ),
                                                decoration: AppDecoration
                                                    .txtDddd
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder11,
                                                ),
                                                child: Text(
                                                  " Mumbai",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: getVerticalSize(
                                            78,
                                          ),
                                          width: getHorizontalSize(
                                            123,
                                          ),
                                          margin: getMargin(
                                            top: 175,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.indigo90001,
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
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: getMargin(
                              left: 16,
                              right: 16,
                            ),
                            padding: getPadding(
                              top: 8,
                              bottom: 8,
                            ),
                            decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                  width: getHorizontalSize(
                                    233,
                                  ),
                                  focusNode: FocusNode(),
                                  controller: frame37404Controller,
                                  hintText: "Today's Job in Delhi NCR",
                                  margin: getMargin(
                                    left: 11,
                                  ),
                                  variant: TextFormFieldVariant.FillWhiteA700,
                                  fontStyle: TextFormFieldFontStyle.InterBold14,
                                  textInputAction: TextInputAction.done,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 21,
                                    top: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgBag,
                                        height: getSize(
                                          14,
                                        ),
                                        width: getSize(
                                          14,
                                        ),
                                        margin: getMargin(
                                          top: 1,
                                          bottom: 1,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 16,
                                        ),
                                        child: Text(
                                          "7 jobs",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 13,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgBicashstack,
                                        height: getSize(
                                          16,
                                        ),
                                        width: getSize(
                                          16,
                                        ),
                                        margin: getMargin(
                                          top: 1,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 12,
                                        ),
                                        child: Text(
                                          "Worth Rs. 1500",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 23,
                                    bottom: 25,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgRefreshBlack900,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 8,
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "Last updated at 12 pm -  New Update 8:30 AM",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.bottomCenter,
                        //   child: Padding(
                        //     padding: getPadding(
                        //       bottom: 140
                        //     ),
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       mainAxisAlignment: MainAxisAlignment.start,
                        //       children: [
                        //         Container(
                        //           width: double.maxFinite,
                        //           padding: getPadding(
                        //             top: 0,
                        //             bottom: 18,
                        //           ),
                        //           decoration: AppDecoration.fillWhiteA700,
                        //           child: Row(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceEvenly,
                        //             crossAxisAlignment: CrossAxisAlignment.end,
                        //             children: [
                        //               Padding(
                        //                 padding: getPadding(
                        //                   top: 8,
                        //                 ),
                        //                 child: Column(
                        //                   crossAxisAlignment:
                        //                       CrossAxisAlignment.start,
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.start,
                        //                   children: [
                        //                     CustomIconButton(
                        //                       height: 40,
                        //                       width: 40,
                        //                       variant: IconButtonVariant
                        //                           .FillBlack9007f,
                        //                       padding:
                        //                           IconButtonPadding.PaddingAll8,
                        //                       child: CustomImageView(
                        //                         svgPath: ImageConstant.imgFrame,
                        //                       ),
                        //                     ),
                        //                     Align(
                        //                       alignment: Alignment.center,
                        //                       child: Text(
                        //                         "New Job",
                        //                         overflow: TextOverflow.ellipsis,
                        //                         textAlign: TextAlign.left,
                        //                         style: AppStyle
                        //                             .txtMulishRomanBlack10Gray90066,
                        //                       ),
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ),
                        //               Padding(
                        //                 padding: getPadding(
                        //                   top: 8,
                        //                 ),
                        //                 child: Column(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.start,
                        //                   children: [
                        //                     CustomIconButton(
                        //                       height: 40,
                        //                       width: 40,
                        //                       variant: IconButtonVariant
                        //                           .FillBlack9007f,
                        //                       padding:
                        //                           IconButtonPadding.PaddingAll8,
                        //                       child: CustomImageView(
                        //                         svgPath:
                        //                             ImageConstant.imgRefresh,
                        //                       ),
                        //                     ),
                        //                     Padding(
                        //                       padding: getPadding(
                        //                         top: 1,
                        //                       ),
                        //                       child: Text(
                        //                         "Ongoing",
                        //                         overflow: TextOverflow.ellipsis,
                        //                         textAlign: TextAlign.left,
                        //                         style: AppStyle
                        //                             .txtMulishRomanBold10,
                        //                       ),
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ),
                        //               Padding(
                        //                 padding: getPadding(
                        //                   top: 8,
                        //                   bottom: 1,
                        //                 ),
                        //                 child: Column(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.start,
                        //                   children: [
                        //                     CustomIconButton(
                        //                       height: 40,
                        //                       width: 40,
                        //                       variant:
                        //                           IconButtonVariant.FillBlue900,
                        //                       padding:
                        //                           IconButtonPadding.PaddingAll8,
                        //                       child: CustomImageView(
                        //                         svgPath:
                        //                             ImageConstant.imgCheckmark,
                        //                       ),
                        //                     ),
                        //                     Text(
                        //                       "RAC Around",
                        //                       overflow: TextOverflow.ellipsis,
                        //                       textAlign: TextAlign.left,
                        //                       style: AppStyle
                        //                           .txtMulishRomanBlack10,
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ),
                        //               Padding(
                        //                 padding: getPadding(
                        //                   top: 8,
                        //                 ),
                        //                 child: Column(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.start,
                        //                   children: [
                        //                     CustomIconButton(
                        //                       height: 40,
                        //                       width: 40,
                        //                       variant: IconButtonVariant
                        //                           .FillBlack9007f,
                        //                       padding:
                        //                           IconButtonPadding.PaddingAll8,
                        //                       child: CustomImageView(
                        //                         svgPath: ImageConstant
                        //                             .imgFrameWhiteA700,
                        //                       ),
                        //                     ),
                        //                     Text(
                        //                       "Shopping",
                        //                       overflow: TextOverflow.ellipsis,
                        //                       textAlign: TextAlign.left,
                        //                       style:
                        //                           AppStyle.txtMulishRomanBold10,
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ),
                        //               Padding(
                        //                 padding: getPadding(
                        //                   top: 8,
                        //                   bottom: 1,
                        //                 ),
                        //                 child: Column(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.start,
                        //                   children: [
                        //                     CustomIconButton(
                        //                       height: 40,
                        //                       width: 40,
                        //                       variant: IconButtonVariant
                        //                           .FillBlack9007f,
                        //                       padding:
                        //                           IconButtonPadding.PaddingAll8,
                        //                       child: CustomImageView(
                        //                         svgPath: ImageConstant
                        //                             .imgFrameWhiteA70040x40,
                        //                       ),
                        //                     ),
                        //                     Text(
                        //                       "Profile",
                        //                       overflow: TextOverflow.ellipsis,
                        //                       textAlign: TextAlign.left,
                        //                       style:
                        //                           AppStyle.txtMulishRomanBold10,
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  // onTapColumnrefresh(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  // }
  // onTapColumnframetwo(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.profileScreen);
  // }
}
