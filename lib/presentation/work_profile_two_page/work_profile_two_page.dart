import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class WorkProfileTwoPage extends StatefulWidget {
  @override
  _WorkProfileTwoPageState createState() => _WorkProfileTwoPageState();
  onTapGridicons(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37352Screen);
  }

  onTapGridicons1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37354Screen);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen);
  }
}

class _WorkProfileTwoPageState extends State<WorkProfileTwoPage>
    with AutomaticKeepAliveClientMixin<WorkProfileTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    Expanded(
                        child: Padding(
                            padding: getPadding(left: 16, top: 14, right: 16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Choose your service area:",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium14.copyWith(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                      )),
                                  Container(
                                      width: double.maxFinite,
                                      child: Container(
                                          width: getHorizontalSize(358),
                                          margin: getMargin(top: 7),
                                          padding: getPadding(
                                              left: 13,
                                              top: 17,
                                              right: 13,
                                              bottom: 17),
                                          decoration: AppDecoration
                                              .outlineBluegray100
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgVectorBlack9005x10,
                                                    height:
                                                        getVerticalSize(5),
                                                    width:
                                                        getHorizontalSize(10),
                                                    margin: getMargin(top: 1))
                                              ]))),
                                  Padding(
                                      padding: getPadding(top: 22),
                                      child: Text(
                                          "Serviceable Distance (in km)",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14.copyWith(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ))),
                                  Container(
                                      width: double.maxFinite,
                                      child: GestureDetector(
                                          // onTap: () {
                                          //   onTapGridicons(context);
                                          // },
                                          child: Container(
                                              width: getHorizontalSize(358),
                                              margin: getMargin(top: 7),
                                              padding: getPadding(
                                                  left: 13,
                                                  top: 17,
                                                  right: 13,
                                                  bottom: 17),
                                              decoration: AppDecoration
                                                  .outlineBluegray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorBlack9005x10,
                                                        height:
                                                            getVerticalSize(
                                                                5),
                                                        width:
                                                            getHorizontalSize(
                                                                10),
                                                        margin:
                                                            getMargin(top: 1))
                                                  ])))),
                                  Padding(
                                      padding: getPadding(top: 18),
                                      child: Text("Add your service",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14.copyWith(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ))),
                                  Container(
                                      width: double.maxFinite,
                                      child: GestureDetector(
                                          // onTap: () {
                                          //   onTapGridicons1(context);
                                          // },
                                          child: Container(
                                              width: getHorizontalSize(358),
                                              margin: getMargin(top: 7),
                                              padding: getPadding(
                                                  left: 13,
                                                  top: 17,
                                                  right: 13,
                                                  bottom: 17),
                                              decoration: AppDecoration
                                                  .outlineBluegray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorBlack9005x10,
                                                        height:
                                                            getVerticalSize(
                                                                5),
                                                        width:
                                                            getHorizontalSize(
                                                                10),
                                                        margin:
                                                            getMargin(top: 1)),

                                                  ])))),
                                 SizedBox(height:MediaQuery.of(context).size.height/4,),
                                  CustomButton(
                                      width: getHorizontalSize(195),
                                      text: "Save",
                                      shape: ButtonShape.RoundedBorder26,
                                      padding: ButtonPadding.PaddingAll11,
                                      fontStyle:
                                          ButtonFontStyle.InterSemiBold24,
                                      onTap: () {
                                        // onTapSave(context);
                                      },
                                      alignment: Alignment.center)
                                ]))),

                  ]),
                ))));
  }

  // onTapGridicons(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame37352Screen);
  // }

  // onTapGridicons1(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame37354Screen);
  // }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workProfilePage);
  }
}
