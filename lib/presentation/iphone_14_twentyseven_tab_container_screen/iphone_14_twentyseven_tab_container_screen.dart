import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/iphone_14_twentyseven_page/iphone_14_twentyseven_page.dart';
import 'package:urban_partner/widgets/app_bar/appbar_circleimage.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

import '../edit_profile_four_tab_container_screen/edit_profile_four_tab_container_screen.dart';

class Iphone14TwentysevenTabContainerScreen extends StatefulWidget {
  @override
  _Iphone14TwentysevenTabContainerScreenState createState() =>
      _Iphone14TwentysevenTabContainerScreenState();
  onTapGroup295(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}

// ignore_for_file: must_be_immutable
class _Iphone14TwentysevenTabContainerScreenState
    extends State<Iphone14TwentysevenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(124),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgGroup295,
                    margin: getMargin(bottom: 58),
                    onTap: () {
                      onTapGroup295(context);
                    }),
                centerTitle: true,
                title: AppbarCircleimage(
                    imagePath: ImageConstant.imgEllipse405,
                    margin: getMargin(top: 26)),
                actions: [
                  CustomButton(
                    onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileFourTabContainerScreen()));
                    },
                      height: getVerticalSize(32),
                      width: getHorizontalSize(78),
                      text: "Edit",
                      margin:
                          getMargin(left: 17, top: 4, right: 17, bottom: 80),
                      variant: ButtonVariant.FillBlue900,
                      fontStyle: ButtonFontStyle.InterMedium14)
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 25),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(27),
                              width: getHorizontalSize(358),
                              child: TabBar(
                                  controller: tabviewController,
                                  labelColor: ColorConstant.blue900,
                                  labelStyle: TextStyle(
                                      fontSize: getFontSize(16),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600),
                                  unselectedLabelColor: ColorConstant.gray900,
                                  unselectedLabelStyle: TextStyle(
                                      fontSize: getFontSize(16),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400),
                                  indicatorColor: ColorConstant.blue900,
                                  tabs: [
                                    Tab(
                                        child: Text("My Details",
                                            overflow: TextOverflow.ellipsis)),
                                    Tab(
                                        child: Text("Bank Details",
                                            overflow: TextOverflow.ellipsis)),
                                    Tab(
                                        child: Text("Documents",
                                            overflow: TextOverflow.ellipsis))
                                  ])),
                          Container(
                              height: getVerticalSize(781),
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    Iphone14TwentysevenPage(),
                                    Iphone14TwentysevenPage(),
                                    Iphone14TwentysevenPage()
                                  ]))
                        ])))));
  }

  onTapGroup295(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
