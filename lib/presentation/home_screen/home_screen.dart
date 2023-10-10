import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/get_profile_model.dart';
import 'package:urban_partner/presentation/ongoing_press_screen/ongoing_press_screen.dart';
import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/presentation/rac_around_screen/rac_around_screen.dart';
import 'package:urban_partner/presentation/shopping_panel_screen/shopping_panel_screen.dart';
import 'package:urban_partner/widgets/custom_button.dart';

import '../../repository/auth_repository.dart';
import '../home_screen/widgets/listservice_item_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetProfileModel getProfileModel = GetProfileModel();
  int _currentIndex = 0;

  @override
  void initState() {
    getProfileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: getProfileModel.data == null
              ? Center(child: CircularProgressIndicator())
              : Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: getPadding(bottom: 196),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(162),
                                  // width: double.maxFinite,
                                  padding: getPadding(
                                      left: 7, top: 6, right: 7, bottom: 6),
                                  decoration: AppDecoration.fillWhiteA7007f,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse136,
                                            height: getVerticalSize(74),
                                            width: getHorizontalSize(71),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(37)),
                                            alignment: Alignment.topLeft,
                                            margin: getMargin(left: 9)),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 5,
                                                                        bottom:
                                                                            5),
                                                                    child: Text(
                                                                        "RAC Wallet",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRomanBold12)),
                                                                CustomButton(
                                                                    height:
                                                                        getVerticalSize(
                                                                            26),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            70),
                                                                    text: getProfileModel
                                                                        .data!
                                                                        .wallet
                                                                        .toString(),
                                                                    margin: getMargin(
                                                                        left:
                                                                            8),
                                                                    variant: ButtonVariant
                                                                        .FillDeeppurpleA200,
                                                                    shape: ButtonShape
                                                                        .CircleBorder13,
                                                                    padding: ButtonPadding
                                                                        .PaddingT5,
                                                                    fontStyle:
                                                                        ButtonFontStyle
                                                                            .RobotoRomanBold12,
                                                                    prefixWidget: Container(
                                                                        margin: getMargin(
                                                                            right:
                                                                                2),
                                                                        decoration: BoxDecoration(
                                                                            color: ColorConstant
                                                                                .whiteA700),
                                                                        child: CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgVector)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 15),
                                                          child: Row(children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        40),
                                                                width:
                                                                    getHorizontalSize(
                                                                        80),
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack9003f1,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: Card(
                                                                              clipBehavior: Clip.antiAlias,
                                                                              elevation: 0,
                                                                              margin: EdgeInsets.all(0),
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder2),
                                                                              child: Container(
                                                                                  height: getVerticalSize(40),
                                                                                  width: getHorizontalSize(80),
                                                                                  decoration: AppDecoration.gradientOrange700YellowA400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
                                                                                  child: Stack(children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgGroup15, height: getVerticalSize(40), width: getHorizontalSize(80), radius: BorderRadius.circular(getHorizontalSize(2)), alignment: Alignment.center)
                                                                                  ])))),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Padding(
                                                                              padding: getPadding(bottom: 1),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  Text("Silver Plan", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInriaSansBold47),
                                                                                  Text("Benefits", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInriaSansRegular376),
                                                                                  Container(width: getHorizontalSize(34), margin: getMargin(left: 2), child: Text("2 Free T-Shirt\nPer lead cost 100 Rs\nNo charge on per job\n1 year validity", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInriaSansRegular376)),
                                                                                  Align(alignment: Alignment.centerRight, child: Text("₹1500.0", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInriaSansBold47Black900))
                                                                                ]),
                                                                                Padding(padding: getPadding(left: 3, top: 29), child: Text("₹2500.0", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInriaSansBold47Black900))
                                                                              ])))
                                                                    ])),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgComputer,
                                                                height:
                                                                    getVerticalSize(
                                                                        20),
                                                                width:
                                                                    getHorizontalSize(
                                                                        19),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            28,
                                                                        top: 12,
                                                                        bottom:
                                                                            8)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPhshoppingcartfill,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            16,
                                                                        top: 8,
                                                                        bottom:
                                                                            8))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 27, top: 3),
                                                          child: Text("Gold",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMulishRomanBlack13))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: getPadding(top: 13),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8,
                                                              bottom: 2),
                                                          child: Text(
                                                              getProfileModel
                                                                      .data!
                                                                      .fullName ??
                                                                  "",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold12
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.36)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 72,
                                                              top: 5,
                                                              bottom: 5),
                                                          child: Text(
                                                              "Lead Wallet",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRomanBold12)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  26),
                                                          width:
                                                              getHorizontalSize(
                                                                  70),
                                                          text: getProfileModel
                                                              .data!.lead
                                                              .toString(),
                                                          margin: getMargin(
                                                              left: 8),
                                                          variant: ButtonVariant
                                                              .FillTeal800,
                                                          shape: ButtonShape
                                                              .CircleBorder13,
                                                          fontStyle: ButtonFontStyle
                                                              .RobotoRomanBold12)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 95, top: 41),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          getProfileModel.data!
                                                                  .address ??
                                                              "",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewayRomanBold11
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.33))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgIcsharpstarpurple500,
                                                                height:
                                                                    getVerticalSize(
                                                                        16),
                                                                width:
                                                                    getHorizontalSize(
                                                                        15)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            1),
                                                                child: Text(
                                                                    "4.5",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold12))
                                                          ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                margin: getMargin(bottom: 15),
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 3,
                                                    right: 17,
                                                    bottom: 3),
                                                decoration: AppDecoration
                                                    .fillGreenA200
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder22),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  89),
                                                          margin:
                                                              getMargin(top: 2),
                                                          child: Text(
                                                              "Total Earned:\nRs.10,000",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtInterBold13
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.39))))
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 9, right: 17),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Text("5 New Jobs",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterBold16)),
                                        Container(
                                            height: getVerticalSize(23),
                                            width: getHorizontalSize(92),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapTxtMissedjob(
                                                                context);
                                                          },
                                                          child: Text(
                                                              "Missed Job",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium16Blue900
                                                                  .copyWith(
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          height: getSize(8),
                                                          width: getSize(8),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .red600,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          4)))))
                                                ]))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 17, top: 17, right: 22),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(14));
                                      },
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return ListserviceItemWidget(
                                            onTapReject: () {
                                          onTapReject(context);
                                        }, onTapAccept: () {
                                          onTapAccept(context);
                                        });
                                      })),
                            ]),
                      ),
                    ),
                  ),
                  BottomNavigationBar(
                    backgroundColor: Colors.white,
                      type: BottomNavigationBarType.fixed,
                     selectedItemColor: Colors.blue.shade900,
                      selectedLabelStyle: TextStyle(
                        fontFamily: 'inter',
                      ),
                      currentIndex: _currentIndex,
                      onTap: _onTabTapped,
                      items: [
                        BottomNavigationBarItem(
                          activeIcon: CircleAvatar(
                            backgroundColor: Colors.blue.shade900,
                           child: CustomImageView(
                                svgPath: ImageConstant.imgFrame),
                          ),
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.shade600,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgFrame),
                          ),
                          label: 'New Job',
                        ),
                        BottomNavigationBarItem(
                          activeIcon: CircleAvatar(
                            backgroundColor: Colors.blue.shade900,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgRefresh),
                          ),
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.shade600,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgRefresh),
                          ),
                          label: 'Ongoing',
                        ),
                        BottomNavigationBarItem(
                            activeIcon: CircleAvatar(
                              backgroundColor: Colors.blue.shade900,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark),
                            ),
                            icon: CircleAvatar(
                              backgroundColor: Colors.grey.shade600,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark),
                            ),
                            label: 'RAC Around'),
                        BottomNavigationBarItem(
                            activeIcon: CircleAvatar(
                              backgroundColor: Colors.blue.shade900,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFrameWhiteA700),
                            ),
                            icon: CircleAvatar(
                              backgroundColor: Colors.grey.shade600,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFrameWhiteA700),
                            ),
                            label: 'Shopping'),
                        BottomNavigationBarItem(
                            activeIcon: CircleAvatar(
                              backgroundColor: Colors.blue.shade900,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFrameWhiteA70040x40),
                            ),
                            icon: CircleAvatar(
                              backgroundColor: Colors.grey.shade600,
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgFrameWhiteA70040x40),
                            ),
                            label: 'Profile')
                      ]),
                ]),
        ),
      ),
    );
  }

  onTapReject(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  onTapAccept(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }

  onTapRacRound(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
  }

  onTapTxtMissedjob(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.missedJobsScreen);
  }

  onTapColumnrefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }

  onTapColumnframetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  getProfileData() async {
    final authRepository = AuthRepository();
    final response = await authRepository.getProfileApi();
    getProfileModel = GetProfileModel.fromJson(response);
    setState(() {});
  }

  void _onTabTapped(int index) {

    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
      } else if (_currentIndex == 1) {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>OngoingPressScreen()));
      } else if (_currentIndex == 2) {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>RacAroundScreen()));
      } else if (_currentIndex == 3) {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>ShoppingPanelScreen()));
      } else if (_currentIndex == 4) {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>ProfileScreen()));
      }
    });

  }
}
