import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/ongoing_press_screen/ongoing_press_screen.dart';
import 'package:urban_partner/presentation/start_job_screen/start_job_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

class StartNavigationScreen extends StatelessWidget {
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
        //   title:  Center(child: AppbarSubtitle1(text: "Start Navigation")),
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
          title: AppbarSubtitle(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OngoingPressScreen()));
            },
            text: "Start Navigation",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 8,
            bottom: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                height: getVerticalSize(
                  2,
                ),
                thickness: getVerticalSize(
                  2,
                ),
                color: ColorConstant.blueGray100,
              ),
              CustomImageView(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> StartJobScreen()));
                },
                imagePath: ImageConstant.imgMapsiclemap,
                height: getVerticalSize(
                  500,
                ),
                width: getHorizontalSize(
                  390,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  onTapGroup299(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }
}
