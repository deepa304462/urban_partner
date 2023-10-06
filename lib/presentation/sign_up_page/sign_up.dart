import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/core/utils/utils.dart';
import 'package:urban_partner/models/register_model.dart';
import 'package:urban_partner/presentation/login_page/login_page.dart';
import 'package:urban_partner/presentation/otp_screen/otp_screen.dart';
import 'package:urban_partner/repository/auth_repository.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

import '../../view_models/auth_view_model.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  TextEditingController rectangle3405Controller = TextEditingController();

  TextEditingController rectangle3407Controller = TextEditingController();

  TextEditingController rectangle3408Controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //final authViewModel= Provider.of<AuthViewModel>(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Form(
                  key: _formKey,
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
                                              child: Text("Create your Account",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanBlack4512)))
                                    ]))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 16, top: 34),
                                child: Text("Full Name:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium14))),
                        CustomTextFormField(
                            textInputType:TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your full name';
                              }
                            },
                            focusNode: FocusNode(),
                            controller: rectangle3405Controller,
                            margin: getMargin(left: 16, top: 8, right: 16)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 16, top: 24),
                                child: Text("Email ID:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium14))),
                        CustomTextFormField(
                          textInputType:TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              } else if (!isValidEmail(value)) {
                                return 'Please enter a valid email';
                              }
                              return null; // Return null if the input is valid.
                            },
                            focusNode: FocusNode(),
                            controller: rectangle3407Controller,
                            margin: getMargin(left: 16, top: 8, right: 16)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 16, top: 20),
                                child: Text("Mobile No:",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium14))),
                        CustomTextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your phone number';
                              }
                              if (!isValidPhoneNumber(value)) {
                                return 'Please enter a valid phone number';
                              }
                              return null; // Return null if the input is valid.
                            },
                            textInputType:TextInputType.phone,
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
                            onTap: ()
                            { if (_formKey.currentState!.validate()) {
                              onTapSendotp(context);
                            }
                            }),
                        Padding(
                            padding: getPadding(top: 47, bottom: 128),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>LogInScreen()));
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Already have an account? ",
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize:
                                                getFontSize(19.91122055053711),
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(
                                        text: "Log in",
                                        style: TextStyle(
                                            color: ColorConstant.blue900,
                                            fontSize:
                                                getFontSize(19.91122055053711),
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w900))
                                  ]),
                                  textAlign: TextAlign.left),
                            ))
                      ]),
                ))));
  }

  onTapSendotp(BuildContext context) async {
    Utils.showNonDismissibleLoadingDialog(
        context, 'Please wait...', 'Loading...');
    Map<String, String> data = {
      'fullName': rectangle3405Controller.text,
      'phone': rectangle3408Controller.text,
      'email': rectangle3407Controller.text
    };
    final authRepository = AuthRepository();
    final response = await authRepository.signUpApi(data);
    Navigator.pop(context);
    RegisterModel registerModel = RegisterModel.fromJson(response);
    if (registerModel.status == 200) {
      debugPrint(registerModel.data!.otp.toString());
      Utils.toastMassage(registerModel.data!.otp.toString());
      Navigator.pushNamed(context, AppRoutes.otpScreen, arguments: {
        'otpId': registerModel.data!.id!,
        'isFromLogin': false,
        'phone': rectangle3408Controller.text,
      });
      debugPrint(registerModel.data!.id!);
    } else {
      Utils.toastMassage(response['msg']);
    }
  }

  bool isValidEmail(String email) {
    // Define a regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegExp.hasMatch(email);
  }
  bool isValidPhoneNumber(String phoneNumber) {
    // Define a regular expression for phone number validation
    final phoneRegExp = RegExp(r'^\d{10}$');
    return phoneRegExp.hasMatch(phoneNumber);
  }
}
