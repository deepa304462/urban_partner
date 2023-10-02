import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/aster_image_page/aster_image_page.dart';
import 'package:urban_partner/presentation/work_profile_two_page/work_profile_two_page.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

import '../work_profile_one_screen/work_profile_one_screen.dart';
import '../work_profile_page/work_profile_page.dart';

class WorkProfileTabContainerScreen extends StatefulWidget {
  @override
  _WorkProfileTabContainerScreenState createState() =>
      _WorkProfileTabContainerScreenState();
}

class _WorkProfileTabContainerScreenState
    extends State<WorkProfileTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          169,
                        ),
                        width: getHorizontalSize(
                          274,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomIconButton(
                              height: 58,
                              width: 58,
                              alignment: Alignment.topLeft,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgGroup295,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: getHorizontalSize(
                                  258,
                                ),
                                child: Text(
                                  "Set up your\nDetails",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtMulishRomanBlack4512Black900
                                      .copyWith(
                                    fontFamily: 'Mulish',
                                    fontSize: 45.11,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          28,
                        ),
                        width: getHorizontalSize(
                          358,
                        ),
                        margin: getMargin(
                          top: 24,
                        ),
                        child: TabBar(
                          controller: tabviewController,
                          labelColor: ColorConstant.blue900,
                          labelStyle: TextStyle(
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                          unselectedLabelColor: ColorConstant.gray900,
                          unselectedLabelStyle: TextStyle(
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                          indicatorColor: ColorConstant.blue900,
                          tabs: [
                            Tab(
                              child: Text(
                                "Work Profile",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Documents",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          930,
                        ),
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            WorkProfileTwoPage(),
                            // AsterImagePage(),
                            WorkProfilePage()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
