import '../iphone_14_nineteen_screen/widgets/listname_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

class Iphone14NineteenScreen extends StatelessWidget {
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
                      onTapGroup303(context);
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
                          padding: getPadding(left: 16, top: 14),
                          child: Text("Total working history",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold16)),
                      Expanded(
                          child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 20, top: 12, right: 19),
                                  child: ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: 7,
                                      itemBuilder: (context, index) {
                                        return ListnameItemWidget(
                                            onTapColumnname: () {
                                          onTapColumnname(context);
                                        });
                                      }))))
                    ]))));
  }

  onTapColumnname(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwentyScreen);
  }

  onTapGroup303(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
