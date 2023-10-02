import '../iphone_14_twenty_screen/widgets/listtype_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

class Iphone14TwentyScreen extends StatelessWidget {
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
                      onTapGroup304(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Job History")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 8, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(2),
                          thickness: getVerticalSize(2),
                          color: ColorConstant.blueGray100),
                      Padding(
                          padding: getPadding(left: 16, top: 15),
                          child: Text("Job history Details",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold16)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(358),
                              margin: getMargin(left: 16, top: 6, right: 16),
                              padding: getPadding(
                                  left: 16, top: 15, right: 16, bottom: 15),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder11),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Booking ID: RAC10001",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold16Gray900)),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Text("Raj Kumar",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold16Gray900)),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Text("Address",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium12)),
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("Model Town, Delhi 110044",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium14Gray900)),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Text("Date & Time",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium12)),
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text(
                                            "12-5-21             10:00AM",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium14Gray900)),
                                    Padding(
                                        padding: getPadding(top: 15),
                                        child: Row(children: [
                                          Text("In time",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium12),
                                          Padding(
                                              padding: getPadding(left: 63),
                                              child: Text("Exit time",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium12))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Row(children: [
                                          Text("10:00AM",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterMedium14Gray900),
                                          Padding(
                                              padding: getPadding(left: 42),
                                              child: Text("10:00AM",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14Gray900))
                                        ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 16, top: 23),
                          child: Text("Work Summary",
                              // overflow: TextOverflow.ellipsis,
                              // textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold16)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(210),
                              width: getHorizontalSize(358),
                              margin: getMargin(top: 4, bottom: 5),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: getPadding(left: 24, top: 18),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgRadixiconscross2,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  alignment:
                                                      Alignment.centerRight),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgRadixiconscross2,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  margin: getMargin(top: 25))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding:
                                            getPadding(top: 16, bottom: 16),
                                        decoration: AppDecoration
                                            .outlineBluegray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder11),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13, right: 25),
                                                  child: ListView.separated(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    22));
                                                      },
                                                      itemCount: 2,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return ListtypeItemWidget();
                                                      })),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 24,
                                                      right: 25),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "Other Work",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterMedium14)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text("₹5000",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterMedium14Gray900))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 23),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(2),
                                                      thickness:
                                                          getVerticalSize(2),
                                                      color: ColorConstant
                                                          .blueGray100)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 24,
                                                      right: 25,
                                                      bottom: 8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Total Amount",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium14),
                                                        Text("₹5000",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium14Gray900)
                                                      ]))
                                            ])))
                              ])))
                    ]))));
  }

  onTapGroup304(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14NineteenScreen);
  }
}
