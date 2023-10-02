import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

class MyPlansBeforActivatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                    },
                    svgPath: ImageConstant.imgGroup295),
                centerTitle: true,
                title: AppbarSubtitle1(text: "My Plan")),
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
                      Spacer(),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.gray100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder82),
                          child: Container(
                              height: getSize(164),
                              width: getSize(164),
                              padding: getPadding(
                                  left: 59, top: 51, right: 59, bottom: 51),
                              decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder82),
                              child: Stack(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector58x44,
                                    height: getVerticalSize(58),
                                    width: getHorizontalSize(44),
                                    alignment: Alignment.center)
                              ]))),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("You have no active plan going on",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMediumItalic16)),
                      GestureDetector(
                          onTap: () {
                            onTapTxtPleaseactivea(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 18, bottom: 277),
                              child: Text("Please active a new plan ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPoppinsMediumItalic16Blue900
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline))))
                    ]))));
  }

  onTapTxtPleaseactivea(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myPlansAfterActivatingScreen);
  }
}
