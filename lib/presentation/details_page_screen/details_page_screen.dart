import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/start_navigation_screen/start_navigation_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class DetailsPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            // appBar:   AppBar(
            //   backgroundColor: Colors.white,
            //   elevation: 0,
            //   iconTheme: IconThemeData(
            //     color: Colors.black, // Set the leading icon color to black
            //   ),
            //   title:  Center(child: AppbarSubtitle1(text: "Job Description")),
            //
            // ),
            appBar: CustomAppBar(
                height: getVerticalSize(58),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgGroup295,
                    onTap: () {
                      onTapGroup299(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Job Description")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 8, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(2),
                          thickness: getVerticalSize(2),
                          color: ColorConstant.blueGray100),
                      Container(
                          margin: getMargin(left: 16, top: 42, right: 16),
                          padding: getPadding(top: 9, bottom: 9),
                          decoration: AppDecoration.outlineBlack9003f2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 17),
                                    child: Text("Booking ID",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium13Black900)),
                                Padding(
                                    padding: getPadding(left: 17, top: 4),
                                    child: Text("RAC:1001",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                Padding(
                                    padding: getPadding(left: 17, top: 19),
                                    child: Text("Service Cost ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium13Black900)),
                                Container(
                                    width: getHorizontalSize(146),
                                    margin: getMargin(left: 17, top: 5),
                                    child: Text(
                                        "Split AC Service\nSplit AC gas Charging",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Divider(
                                        height: getVerticalSize(2),
                                        thickness: getVerticalSize(2),
                                        color: ColorConstant.blueGray100)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 17,
                                            top: 15,
                                            right: 10,
                                            bottom: 6),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 3),
                                                  child: Text("Total",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14)),
                                              Text("₹3000",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Black900)
                                            ])))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 19),
                              child: Text("Customer Details",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold16))),
                      Container(
                          margin:
                              getMargin(left: 16, top: 8, right: 16, bottom: 5),
                          padding: getPadding(
                              left: 11, top: 18, right: 11, bottom: 18),
                          decoration: AppDecoration.outlineBlack9003f2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 6, bottom: 3),
                                              child: Text("Raj Kumar",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold16Black900)),
                                          CustomIconButton(
                                              height: 30,
                                              width: 30,
                                              variant: IconButtonVariant
                                                  .FillLightgreen90001,
                                              shape: IconButtonShape
                                                  .CircleBorder15,
                                              padding:
                                                  IconButtonPadding.PaddingAll8,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCall))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Text("Address",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium13Black900)),
                                Container(
                                    width: getHorizontalSize(159),
                                    margin: getMargin(top: 8),
                                    child: Text(
                                        "B512,Model Town, Delhi\n110044",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("Date & Time",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium13Black900)),
                                Padding(
                                    padding: getPadding(top: 9, bottom: 7),
                                    child: Text("12-5-21             10:00AM",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => StartNavigationScreen()));
              },
                width: getHorizontalSize(236),
                text: "Start Navigation",
                margin: getMargin(left: 77, right: 77, bottom: 25),
                padding: ButtonPadding.PaddingT10,
                suffixWidget: Container(
                    margin: getMargin(left: 10),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgGroup37550)))));
  }

  onTapGroup299(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }
}
