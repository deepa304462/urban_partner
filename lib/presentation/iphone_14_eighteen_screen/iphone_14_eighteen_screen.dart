import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class Iphone14EighteenScreen extends StatelessWidget {
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
              // CustomIconButton(
              //   height: 58,
              //   width: 58,
              //   alignment: Alignment.centerLeft,
              //   child: CustomImageView(
              //     svgPath: ImageConstant.imgGroup295,
              //   ),
              // ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Divider(
                  height: getVerticalSize(
                    2,
                  ),
                  thickness: getVerticalSize(
                    2,
                  ),
                  color: ColorConstant.blueGray100,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Text(
                  "Please ask customer for OTP to end the service",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMuliBold16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Text(
                  "We Received Rs. 5000 from customer",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMulishRomanMedium16,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 58,
                  top: 51,
                  right: 58,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
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
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {},
                      pinTheme: PinTheme(
                        fieldHeight: getHorizontalSize(
                          46,
                        ),
                        fieldWidth: getHorizontalSize(
                          46,
                        ),
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            6,
                          ),
                        ),
                        selectedFillColor: ColorConstant.blue90019,
                        activeFillColor: ColorConstant.blue90019,
                        inactiveFillColor: ColorConstant.blue90019,
                        inactiveColor: ColorConstant.fromHex("#1212121D"),
                        selectedColor: ColorConstant.fromHex("#1212121D"),
                        activeColor: ColorConstant.fromHex("#1212121D"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          onTap: () {
            onTapPopup(context);
          },
          width: getHorizontalSize(
            221,
          ),
          text: "Submit",
          margin: getMargin(
            left: 85,
            right: 84,
            bottom: 58,
          ),
          shape: ButtonShape.RoundedBorder26,
          padding: ButtonPadding.PaddingAll11,
          fontStyle: ButtonFontStyle.InterSemiBold24,
        ),
      ),
    );
  }

  onTapPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFFFBD370),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/accepted.png',
                height: 100,
                width: 100,
              ),
              SizedBox(height: 20),
              Text(
                'You have successfully \n    completed your job',
                style: TextStyle(fontSize: 16, color: Color(0xFF094DB3)),
              ),
            ],
          ),
        );
      },
    );

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pop(); // Close the first dialog
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(),
        ),
      );
    });
  }

  onTapGroup299(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }
}
