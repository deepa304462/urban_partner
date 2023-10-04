import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/core/utils/utils.dart';
import 'package:urban_partner/models/login_model.dart';
import 'package:urban_partner/models/register_model.dart';
import 'package:urban_partner/repository/auth_repository.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

import '../../shared/ui_navigation.dart';
import '../../view_models/auth_view_model.dart';
import '../sign_up_page/sign_up.dart';

class LogInScreen extends StatelessWidget {
  TextEditingController rectangle3408Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final authViewModel= Provider.of<AuthViewModel>(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(169),
                              width: getHorizontalSize(278),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomIconButton(
                                        height: 58,
                                        width: 58,
                                        alignment: Alignment.topLeft,
                                        child: CustomImageView(
                                            svgPath:
                                            ImageConstant.imgGroup295)),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            width: getHorizontalSize(263),
                                            child: Text("Login your Account",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMulishRomanBlack4512)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 20),
                              child: Text("Mobile No:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3408Controller,
                          margin: getMargin(left: 16, top: 8, right: 16),
                          textInputAction: TextInputAction.done),
                      Spacer(),
                      CustomButton(
                          width: getHorizontalSize(201),
                          text: "Send OTP",
                          shape: ButtonShape.RoundedBorder26,
                          padding: ButtonPadding.PaddingAll15,
                          fontStyle: ButtonFontStyle.InterSemiBold24,
                          onTap: () {
                            onTapSendotp(context);
                          }),
                      Padding(
                          padding: getPadding(top: 47, bottom: 128),
                          child: InkWell(
                            onTap: (){
                              NavByMe.push(context,   SignUpScreen());
                            },
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "If you don't have account ",
                                      style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize:
                                          getFontSize(19.91122055053711),
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700)),
                                  TextSpan(
                                      text: "Sign Up",
                                      style: TextStyle(
                                          color: ColorConstant.blue900,
                                          fontSize:
                                          getFontSize(19.91122055053711),
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w900))
                                ]),
                                textAlign: TextAlign.left),
                          ))
                    ]))));
  }

  onTapSendotp(BuildContext context) async {
    Utils.showNonDismissibleLoadingDialog(context, 'Please wait...', 'Loading...');
    Map<String, String> data = {
      'phone': rectangle3408Controller.text,
    };
    final authRepository = AuthRepository();
    final response = await authRepository.logInApi(data);
    Navigator.pop(context);
    LoginModel loginModel = LoginModel.fromJson(response);
    if (loginModel.status == 200) {
      debugPrint(loginModel.data!.otp.toString());
      Navigator.pushNamed(context, AppRoutes.otpScreen, arguments: {'otpId': loginModel.data!.id!, 'isFromLogin': true,'phone':rectangle3408Controller.text});
    } else {
      Utils.toastMassage(response['msg']);
    }
  }
}
