import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_image.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class EditEorkingAreaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            61,
          ),
          leadingWidth: 65,
          leading: Container(
            margin: getMargin(
              top: 2,
              bottom: 3,
            ),
            padding: getPadding(
              left: 14,
              top: 22,
              right: 14,
              bottom: 22,
            ),
            decoration: AppDecoration.fillWhiteA700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarImage(
                  height: getVerticalSize(
                    9,
                  ),
                  width: getHorizontalSize(
                    25,
                  ),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ProfileScreen()));
                  },
                  svgPath: ImageConstant.imgGroup295,
                  margin: getMargin(
                    left: 1,
                    top: 3,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "Edit Working Area",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 12,
            bottom: 12,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 35,
                    top: 22,
                  ),
                  child: Text(
                    "Add Serviceable Area",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold13,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 21,
                  right: 18,
                ),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackShape: RoundedRectSliderTrackShape(),
                    activeTrackColor: ColorConstant.amber600,
                    inactiveTrackColor: ColorConstant.blueGray100,
                    thumbColor: ColorConstant.blue900,
                    thumbShape: RoundSliderThumbShape(),
                  ),
                  child: Slider(
                    value: 21.41,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 13,
                  top: 6,
                  right: 19,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "0",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12,
                    ),
                    Spacer(
                      flex: 19,
                    ),
                    Text(
                      "5 km",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12,
                    ),
                    Spacer(
                      flex: 80,
                    ),
                    Text(
                      "50 km",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 29,
                  ),
                  child: Text(
                    "Edit your service area:",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  358,
                ),
                margin: getMargin(
                  left: 16,
                  top: 6,
                  right: 16,
                ),
                padding: getPadding(
                  left: 13,
                  top: 17,
                  right: 13,
                  bottom: 17,
                ),
                decoration: AppDecoration.outlineBluegray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgVectorBlack9005x10,
                      height: getVerticalSize(
                        5,
                      ),
                      width: getHorizontalSize(
                        10,
                      ),
                      margin: getMargin(
                        top: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 20,
                  ),
                  child: Text(
                    "Serviceable Distance (in km)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  358,
                ),
                margin: getMargin(
                  left: 16,
                  top: 6,
                  right: 16,
                ),
                padding: getPadding(
                  left: 13,
                  top: 17,
                  right: 13,
                  bottom: 17,
                ),
                decoration: AppDecoration.outlineBluegray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgVectorBlack9005x10,
                      height: getVerticalSize(
                        5,
                      ),
                      width: getHorizontalSize(
                        10,
                      ),
                      margin: getMargin(
                        top: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ProfileScreen()));
                },
                width: getHorizontalSize(
                  195,
                ),
                text: "Save",
                margin: getMargin(
                  bottom: 61,
                ),
                shape: ButtonShape.RoundedBorder26,
                padding: ButtonPadding.PaddingAll11,
                fontStyle: ButtonFontStyle.InterSemiBold24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
