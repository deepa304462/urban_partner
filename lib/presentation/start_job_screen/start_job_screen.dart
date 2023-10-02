import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class StartJobScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
              height: getVerticalSize(58),
              leadingWidth: 58,
              leading: AppbarIconbutton(
                  svgPath: ImageConstant.imgGroup295,
                  onTap: () {
                    onTapGroup299(context);
                  }),
             title:  Center(child: AppbarSubtitle1(text: "Job Start")),

            ),
            // appBar: CustomAppBar(
            //     height: getVerticalSize(58),
            //     leadingWidth: 58,
            //     leading: AppbarIconbutton(
            //         svgPath: ImageConstant.imgGroup295,
            //         onTap: () {
            //           onTapGroup300(context);
            //         }),
            //     centerTitle: true,
            //     title: AppbarSubtitle(text: "Job Start")),
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
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text(
                              "Please ask customer for OTP to Start the service",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMuliBold16)),
                      Container(
                          margin: getMargin(left: 58, top: 74, right: 58),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                PinCodeTextField(
                                    appContext: context,
                                    length: 4,
                                    obscureText: false,
                                    obscuringCharacter: '*',
                                    keyboardType: TextInputType.number,
                                    autoDismissKeyboard: true,
                                    enableActiveFill: true,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    onChanged: (value) {},
                                    pinTheme: PinTheme(
                                        fieldHeight: getHorizontalSize(46),
                                        fieldWidth: getHorizontalSize(46),
                                        shape: PinCodeFieldShape.box,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(6)),
                                        selectedFillColor:
                                            ColorConstant.blue90019,
                                        activeFillColor:
                                            ColorConstant.blue90019,
                                        inactiveFillColor:
                                            ColorConstant.blue90019,
                                        inactiveColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        selectedColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        activeColor:
                                            ColorConstant.fromHex("#1212121D")))
                              ])),
                      Padding(
                          padding: getPadding(top: 58, bottom: 5),
                          child: Text("Verify OTP",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold24.copyWith(
                                  decoration: TextDecoration.underline)))
                    ])),
            bottomNavigationBar: CustomButton(
                width: getHorizontalSize(196),
                text: "Start ",
                margin: getMargin(left: 97, right: 97, bottom: 58),
                shape: ButtonShape.RoundedBorder26,
                padding: ButtonPadding.PaddingAll11,
                fontStyle: ButtonFontStyle.InterSemiBold24,
                onTap: () {
                  onTapStart(context);
                })));
  }

  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jobCardScreen);
  }

  onTapGroup300(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }
  onTapGroup299(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }
}
