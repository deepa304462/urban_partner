import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/edit_profile_page/edit_profile_page.dart';
import 'package:urban_partner/presentation/edit_profile_three_page/edit_profile_three_page.dart';
import 'package:urban_partner/presentation/edit_profile_two_page/edit_profile_two_page.dart';
import 'package:urban_partner/widgets/app_bar/appbar_circleimage.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

class EditProfileFourTabContainerScreen extends StatefulWidget {
  @override
  _EditProfileFourTabContainerScreenState createState() =>
      _EditProfileFourTabContainerScreenState();

  onTapGroup296(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}

// ignore_for_file: must_be_immutable
class _EditProfileFourTabContainerScreenState
    extends State<EditProfileFourTabContainerScreen>
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
                height: getVerticalSize(50),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgGroup295,
                    onTap: () {
                  Navigator.pop(context);
                    }),
               ),
            body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppbarCircleimage(
                          imagePath: ImageConstant.imgEllipse405,

                      ),
                        Container(
                            height: getVerticalSize(30),
                            width: getHorizontalSize(44),
                            margin: getMargin(left: 66,),
                            // decoration: AppDecoration.stack11,
                            child: Stack(
                                alignment: Alignment.bottomLeft, children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgMaterialsymbolsedit,
                                  height: getSize(24),
                                  width: getSize(24),
                                  alignment: Alignment.topRight,
                                  margin: getMargin(left: 20, bottom: 10)),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                      padding: getPadding(top: 16, right: 20),
                                      child: Text("Edit ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtMulishRomanMedium14
                                              .copyWith(
                                              decoration:
                                              TextDecoration.underline))))
                            ])),
                      SizedBox(height: 10,),
                      Container(
                          height: getVerticalSize(30),
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
                          height: getVerticalSize(1017),
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                EditProfilePage(),
                                EditProfileTwoPage(),
                                EditProfileThreePage()
                              ]))
                    ]))));
  }

  onTapGroup296(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
