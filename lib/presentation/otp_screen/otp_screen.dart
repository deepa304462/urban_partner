import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/otp_model.dart';
import 'package:urban_partner/presentation/home_screen/home_screen.dart';
import 'package:urban_partner/presentation/select_city_screen/select_city_screen.dart';
import 'package:urban_partner/repository/auth_repository.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

import '../../core/utils/utils.dart';

class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final pinCodeController = TextEditingController();

  String phone = '';

  String otpId = '';

  late bool _isFromLogin;

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    otpId = arguments['otpId'];
    phone = arguments['phone'];
    _isFromLogin = arguments['isFromLogin'];
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 58,
                          width: 58,
                          alignment: Alignment.centerLeft,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgGroup295)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: double.infinity,
                          margin: getMargin(left: 19, top: 41),
                          child: Text("Verify your\nnumber",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanBlack4512Black900
                                  .copyWith(
                                      fontSize: 47,
                                      fontWeight: FontWeight.w900)),
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 63),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Enter 4 - digit verification code sent to your\nphone number  ",
                                    style: TextStyle(
                                        color: ColorConstant.gray800,
                                        fontSize: getFontSize(15),
                                        fontFamily: 'Mulish',
                                        letterSpacing: .2,
                                        height: 1.5,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: phone,
                                    style: TextStyle(
                                        color: ColorConstant.blue900,
                                        fontSize: getFontSize(15),
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w800)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.green500,
                                        fontSize: getFontSize(15),
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w300)),
                                TextSpan(
                                    text: "Edit",
                                    style: TextStyle(
                                        color: ColorConstant.gray800,
                                        fontSize: getFontSize(15),
                                        fontStyle: FontStyle.italic,
                                        letterSpacing: .2,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w300))
                              ]),
                              textAlign: TextAlign.center)),
                      Container(
                          margin: getMargin(left: 58, top: 60, right: 58),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                PinCodeTextField(
                                    appContext: context,
                                    length: 4,
                                    controller: pinCodeController,
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
                   _isLoading?Center(child: CircularProgressIndicator()) :  CustomButton(
                        text: "Verify",
                        margin: getMargin(left: 27, top: 94, right: 28),
                        shape: ButtonShape.RoundedBorder29,
                        padding: ButtonPadding.PaddingAll15,
                        fontStyle: ButtonFontStyle.MulishItalicExtraBlack24,
                        onTap: () {
                          onTapVerify(context);
                        },
                      ),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("Trouble receiving code ?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishItalicMedium14.copyWith(
                                  fontFamily: 'mulish',
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(left: 82, top: 15),
                          child: Row(
                            children: [
                              Text("60 sec",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMulishItalicExtraBlack16
                                      .copyWith(
                                    fontFamily: 'Mulish',
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                  )),
                              Padding(
                                padding: getPadding(left: 15),
                                child: Text(
                                  "RESEND OTP",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtMulishItalicExtraBlack16Blue90075
                                      .copyWith(
                                    fontFamily: 'Mulish',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Text("Terms and conditions",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishItalicBlack14.copyWith(
                            fontFamily: 'Mulish',
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                          )),
                      Padding(
                        padding: getPadding(top: 6, bottom: 31),
                        child: Text("privacy policy",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMulishItalicBold14.copyWith()),
                      )
                    ]))));
  }

  void onTapVerify(BuildContext context) async {
    setState(() {
      _isLoading= true;
    });
    final authRepository = AuthRepository();
    final response = await authRepository
        .verifyOtpApi(otpId, {'otp': pinCodeController.text});
    OtpModel otpModel = OtpModel.fromJson(response);
    if (otpModel.status == 200) {
      setState(() {
        _isLoading= false;
      });
      await Utils.saveToSharedPreference(Constants.isLoggedIn, true);
      await Utils.saveToSharedPreference(Constants.userId, otpId);
      await Utils.saveToSharedPreference(Constants.accessToken, otpModel.data?.accessToken);
      debugPrint(otpModel.data!.otp.toString());
      debugPrint(otpModel.data?.accessToken);
      debugPrint(otpModel.data?.id);
      Utils.toastMassage(otpModel.data!.otp.toString());
      if (_isFromLogin) {
        Utils.pushToNewRoute(context, HomeScreen());
      } else {
        setState(() {
          _isLoading= false;
        });
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SelectCityScreen()));
      }
    } else {
      setState(() {
        _isLoading= false;
      });
      Utils.toastMassage(response['message']);
    }
  }
}
