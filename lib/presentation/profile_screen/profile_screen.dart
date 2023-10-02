import 'package:urban_partner/presentation/edit_eorking_area_screen/edit_eorking_area_screen.dart';
import 'package:urban_partner/presentation/my_plans_befor_activating_screen/my_plans_befor_activating_screen.dart';

import '../profile_screen/widgets/listggprofile_item_widget.dart';
import '../profile_screen/widgets/listuillanguage_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_circleimage.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

import '../sign_up_page/sign_up.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10001,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                width: double.infinity,
                margin: getMargin(left: 16, top: 10, right: 15),
                padding: getPadding(top: 10, bottom: 0),
                decoration: AppDecoration.fillGray800
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomAppBar(
                          height: getVerticalSize(109),
                          title: Padding(
                            padding: getPadding(left: 22),
                            child: Row(children: [
                              AppbarCircleimage(
                                  imagePath: ImageConstant.imgEllipse405),
                              Padding(
                                padding:
                                    getPadding(left: 15, top: 7, bottom: 23),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(right: 31),
                                          child: Text("Raju Kumar",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold16WhiteA700),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(top: 10),
                                          child: Text("+91 99999 99999",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium16WhiteA70097),
                                        ),
                                      ),
                                    ]),
                              ),
                            ]),
                          ),
                          actions: [
                            GestureDetector(
                              onTap: () {
                                onTapTxtIdcard(context);
                              },
                              child: Padding(
                                padding:
                                    getPadding(left: 28, top: 78, right: 31),
                                child: Text(
                                  "ID Card",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14.copyWith(
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                          ]),
                    ]),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.maxFinite,
                padding: getPadding(top: 16, bottom: 16),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: getMargin(left: 16, right: 15),
                      padding:
                          getPadding(left: 19, top: 16, right: 19, bottom: 16),
                      decoration: AppDecoration.fillGray800.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder11),
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                          // mainAxisSize: MainAxisSize.min,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(left: 1, top: 12),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGgprofile,
                                        height: getSize(32),
                                        width: getSize(32)),
                                    GestureDetector(
                                      onTap: () {
                                        onTapTxtMyprofile(context);
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                            left: 26, top: 2, bottom: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("My Profile",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16WhiteA700),
                                            Text(
                                              "Name, Email, contact number.....",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium13,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: getPadding(top: 12),
                              child: Divider(
                                height: getVerticalSize(2),
                                thickness: getVerticalSize(2),
                                color: ColorConstant.blueGray100,
                                indent: getHorizontalSize(1),
                              ),
                            ),
                            Padding(
                              padding: getPadding(left: 1, top: 12),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getSize(32),
                                        width: getSize(32)),
                                    GestureDetector(
                                      onTap: () {
                                        onTapJobHistory(context);
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                            left: 26, top: 2, bottom: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Job History",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16WhiteA700),
                                            // Text(
                                            //   "Name, Email, contact number.....",
                                            //   overflow: TextOverflow.ellipsis,
                                            //   textAlign: TextAlign.left,
                                            //   style:
                                            //       AppStyle.txtPoppinsMedium13,
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: getPadding(top: 12),
                              child: Divider(
                                height: getVerticalSize(2),
                                thickness: getVerticalSize(2),
                                color: ColorConstant.blueGray100,
                                indent: getHorizontalSize(1),
                              ),
                            ),
                            // Padding(
                            //   padding: getPadding(left: 1, right: 61),
                            //   child: ListView.separated(
                            //       physics: BouncingScrollPhysics(),
                            //       shrinkWrap: true,
                            //       separatorBuilder: (context, index) {
                            //         return Padding(
                            //             padding:
                            //                 getPadding(top: 15.5, bottom: 15.5),
                            //             child: SizedBox(
                            //                 width: getHorizontalSize(319),
                            //                 child: Divider(
                            //                     height: getVerticalSize(2),
                            //                     thickness: getVerticalSize(2),
                            //                     color: ColorConstant
                            //                         .blueGray100)));
                            //       },
                            //       itemCount: 3,
                            //       itemBuilder: (context, index) {
                            //         return ListggprofileItemWidget(
                            //             onTapTxtMyprofile: () {
                            //           onTapTxtMyprofile(context);
                            //         }, onTapTxtNameemailcontac: () {
                            //           onTapTxtNameemailcontac(context);
                            //         });
                            //       }),
                            // ),
                            // Padding(
                            //     padding: getPadding(top: 12),
                            //     child: Divider(
                            //         height: getVerticalSize(2),
                            //         thickness: getVerticalSize(2),
                            //         color: ColorConstant.blueGray100,
                            //         indent: getHorizontalSize(1))),
                            Padding(
                                padding: getPadding(left: 1, top: 12),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgSolarwalletbold,
                                          height: getSize(32),
                                          width: getSize(32)),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtMytotalearning(context);
                                          },
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 26, top: 2, bottom: 5),
                                              child: Text("My total earning",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium16WhiteA700)))
                                    ])),
                            Padding(
                                padding: getPadding(top: 30),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100)),
                            Padding(
                                padding: getPadding(left: 1, top: 11),
                                child: GestureDetector(
                                  onTap: (){
                                    show();
                                  },
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgEosiconscronjob,
                                            height: getSize(32),
                                            width: getSize(32)),
                                        Padding(
                                            padding:
                                                getPadding(left: 26, bottom: 8),
                                            child: Text("Total Missed Job",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16WhiteA700))
                                      ]),
                                )),
                            Padding(
                                padding: getPadding(top: 30),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100)),
                            GestureDetector(
                                onTap: () {
                                  onTapMyTeam(context);
                                },
                              child: Padding(
                                  padding: getPadding(left: 1, top: 12),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgFluentpeopleteam48filled,
                                            height: getSize(32),
                                            width: getSize(32)),
                                        Padding(
                                            padding: getPadding(
                                                left: 26, top: 2, bottom: 5),
                                            child: Text("My Team",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16WhiteA700))
                                      ])),
                            ),
                            Padding(
                                padding: getPadding(top: 30),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100)),
                            GestureDetector(
                              onTap: () {
                                onTapRacwallet(context);
                              },
                              child: Padding(
                                padding: getPadding(left: 1, top: 12),
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgSolarwalletbold,
                                          height: getSize(32),
                                          width: getSize(32)),
                                      Padding(
                                        padding: getPadding(left: 26, bottom: 7),
                                        child: Text("RAC Wallet",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium16WhiteA700),
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                                padding: getPadding(top: 30),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100,
                                    indent: getHorizontalSize(1))),
                            Padding(
                              padding: getPadding(left: 1, top: 12),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgIcroundwallet,
                                        height: getSize(32),
                                        width: getSize(32),
                                        margin: getMargin(bottom: 15)),
                                    GestureDetector(
                                      onTap: () {
                                        onTapLeadWallet(context);
                                      },
                                      child: Padding(
                                        padding: getPadding(left: 26),
                                        child: Text("Lead Wallet",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium16WhiteA700),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                                padding: getPadding(top: 10),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100)),
                            GestureDetector(
                              onTap: () {
                                // onTapMyPlan(context);
                              },
                              child: Padding(
                                  padding: getPadding(left: 1, top: 12),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            onTap: (){
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context)=>MyPlansBeforActivatingScreen()));
                                            },
                                            svgPath: ImageConstant
                                                .imgIconparksolidplan,
                                            height: getSize(32),
                                            width: getSize(32)),
                                        Padding(
                                            padding: getPadding(
                                                left: 26, top: 2, bottom: 5),
                                            child: GestureDetector(
                                              onTap: (){
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder: (context)=>MyPlansBeforActivatingScreen()));
                                              },
                                              child: Text("My Plan",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium16WhiteA700),
                                            ))
                                      ])),
                            ),
                            Padding(
                                padding: getPadding(top: 24),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100)),
                            Padding(
                              padding: getPadding(left: 1, top: 12, right: 73),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgMdishoplocation,
                                        height: getSize(32),
                                        width: getSize(32),
                                        margin: getMargin(bottom: 15)),
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(left: 26, top: 1),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("RAC Repair Shop",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium16WhiteA700),
                                              Padding(
                                                padding: getPadding(top: 1),
                                                child: Text(
                                                    "Refer your friends and family",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium13),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                                padding: getPadding(top: 10),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100,
                                    indent: getHorizontalSize(1))),
                            Padding(
                                padding: getPadding(left: 1, top: 16),
                                child: Row(children: [
                                  CustomImageView(
                                      onTap: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=>EditEorkingAreaScreen()));
                                      },
                                      svgPath: ImageConstant.imgMdiabout,
                                      height: getSize(32),
                                      width: getSize(32)),
                                  Padding(
                                      padding: getPadding(
                                          left: 26, top: 6, bottom: 1),
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context)=>EditEorkingAreaScreen()));
                                        },
                                        child: Text("Edit Working Area",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium16WhiteA700),
                                      ))
                                ])),
                            Padding(
                                padding: getPadding(top: 30),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100,
                                    indent: getHorizontalSize(1))),
                            Padding(
                              padding: getPadding(left: 1, top: 12),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgUillanguage,
                                        height: getSize(32),
                                        width: getSize(32)),
                                    GestureDetector(
                                      onTap: () {
                                        onTapLangauge(context);
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                            left: 26, top: 0, bottom: 0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text("Language",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16WhiteA700),
                                            Text(
                                              "English.....",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium13,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                                padding: getPadding(top: 15),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100,
                                    indent: getHorizontalSize(1))),
                            // Padding(
                            //     padding: getPadding(top: 12, right: 52),
                            //     child: ListView.separated(
                            //         physics: NeverScrollableScrollPhysics(),
                            //         shrinkWrap: true,
                            //         separatorBuilder: (context, index) {
                            //           return Padding(
                            //               padding: getPadding(
                            //                   top: 14.5, bottom: 14.5),
                            //               child: SizedBox(
                            //                   width: getHorizontalSize(319),
                            //                   child: Divider(
                            //                       height: getVerticalSize(2),
                            //                       thickness: getVerticalSize(2),
                            //                       color: ColorConstant
                            //                           .blueGray100)));
                            //         },
                            //         itemCount: 3,
                            //         itemBuilder: (context, index) {
                            //           return ListuillanguageItemWidget();
                            //         })),
                            Padding(
                              padding: getPadding(left: 1, top: 12),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMaterialsymbolsstarrate,
                                        height: getSize(32),
                                        width: getSize(32)),
                                    GestureDetector(
                                      onTap: () {
                                        // onTapLangauge(context);
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                            left: 26, top: 0, bottom: 0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text("Rate us",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16WhiteA700),
                                            Text(
                                              "Rate us on play store",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              AppStyle.txtPoppinsMedium13,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                                padding: getPadding(top: 15),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100,
                                    indent: getHorizontalSize(1))),  Padding(
                              padding: getPadding(left: 1, top: 12),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMaterialsymbolWhiteA700,
                                        height: getSize(32),
                                        width: getSize(32)),
                                    GestureDetector(
                                      onTap: () {
                                        // onTapLangauge(context);
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                            left: 26, top: 0, bottom: 0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text("Support",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16WhiteA700),
                                            Text(
                                              "Contact us",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              AppStyle.txtPoppinsMedium13,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                                padding: getPadding(top: 12),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100)),
                            Padding(
                                padding: getPadding(left: 1, top: 11),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMdiinvite,
                                          height: getSize(32),
                                          width: getSize(32),
                                          onTap: () {
                                            onTapImgMdiinvite(context);
                                          }),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtReferus(context);
                                          },
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 26, bottom: 8),
                                              child: Text("Refer Us",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium16WhiteA700)))
                                    ])),
                            Padding(
                                padding: getPadding(top: 24),
                                child: Divider(
                                    height: getVerticalSize(2),
                                    thickness: getVerticalSize(2),
                                    color: ColorConstant.blueGray100)),
                            Padding(
                              padding:
                                  getPadding(top: 14, right: 52,),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                                },
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCodiconsignout,
                                          height: getSize(32),
                                          width: getSize(32),
                                          margin: getMargin(top: 1, bottom: 10)),
                                      Expanded(
                                        child: Padding(
                                          padding: getPadding(left: 26),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("Sign out",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium16WhiteA700),
                                                // Text(
                                                //     "Name, Email, contact number.....",
                                                //     overflow:
                                                //         TextOverflow.ellipsis,
                                                //     textAlign: TextAlign.left,
                                                //     style: AppStyle
                                                //         .txtPoppinsMedium13)
                                              ]),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ),

      ),
    );
  }

  onTapTxtMyprofile(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.iphone14TwentysevenTabContainerScreen);
  }

  onTapLangauge(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.languageScreen);
  }

  onTapJobHistory(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes. iphone14NineteenScreen);
  }

  onTapTxtNameemailcontac(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.iphone14TwentysevenTabContainerScreen);
  }

  onTapTxtIdcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwentysixScreen);
  }

  onTapTxtMytotalearning(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myEarningScreen);
  }

  onTapImgMdiinvite(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame10052Screen);
  }

  onTapTxtReferus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame10052Screen);
  }

  onTapColumnrefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }

  onTapGoto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37557Screen);
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  onTapColumnframetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapGotoone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  onTapRaCScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
  }

 onTapRacwallet(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.racWalletScreen);
  }

  onTapLeadWallet(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwentythreeScreen);
  }

  onTapMyPlan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myPlansBeforActivatingScreen);
  }

  onTapCancelone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37557Screen);
  }

  onTapGroup298(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  }

  onTapMyTeam(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addHelperOneScreen);
  }

  onTapShoppingPanel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingPanelScreen);
  }

  Future<void> show() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog( // <-- SEE HERE
          content: Container(
           height: 100,
            decoration: AppDecoration.fillOrangeA100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your Total Missed Job",),
                Text("1519")
              ],
            ),
          ),

        );
      },
    );
  }
}
