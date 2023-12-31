
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:urban_partner/common.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/update_and_upload_model.dart';
import 'package:urban_partner/presentation/work_profile_one_screen/work_profile_one_screen.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

import '../../repository/auth_repository.dart';

class PincodeScreen extends StatefulWidget {
  PincodeScreen(String? id);


  @override
  State<PincodeScreen> createState() => _PincodeScreenState();
}

class _PincodeScreenState extends State<PincodeScreen> {
  TextEditingController _pinCodeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 58,
                width: 58,
                alignment: Alignment.centerLeft,
                child: CustomImageView(
                  svgPath: ImageConstant.imgGroup295,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 19,
                    top: 70,
                  ),
                  child: Text(
                    "Add Pincode",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMulishRomanBlack4512Black900.copyWith(
                      fontFamily: 'Mulish',
                      fontSize: 45.11,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 46,
                  ),
                  child: Text(
                    "Enter your area pin code ",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanBold16.copyWith(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(57),
                width: getHorizontalSize(311),
                margin: getMargin(top: 44),
                decoration: BoxDecoration(
                  color: ColorConstant.blue90019,
                  borderRadius: BorderRadius.circular(getHorizontalSize(7)),
                ),
                child: TextFormField(
                    controller: _pinCodeController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter pincode';
                    } else if (value.length < 6) {
                      return 'Please enter six digit pincode';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter text',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: getHorizontalSize(16),
                      vertical: getVerticalSize(16),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: getFontSize(16),
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                  },
                ),
              ),
              _isLoading?Center(child: CircularProgressIndicator()): CustomButton(
                  text: "Continue",
                  margin: getMargin(
                    left: 27,
                    top: 169,
                    right: 28,
                  ),
                  shape: ButtonShape.RoundedBorder29,
                  padding: ButtonPadding.PaddingAll15,
                  fontStyle: ButtonFontStyle.MulishItalicExtraBlack24,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      uploadAndUpdateDocument();
                    }
                  }),
              Spacer(),
              Text(
                "Terms and conditions",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMulishItalicBlack14.copyWith(
                    fontFamily: 'Mulish',
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: getPadding(
                  bottom: 31,
                ),
                child: Text(
                  "privacy policy",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMulishItalicBold14.copyWith(
                      fontFamily: 'Mulish',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void uploadAndUpdateDocument() async {
    setState(() {
      _isLoading = true;
    });
    final authRepository = AuthRepository();
    var data = {
      'pincode': _pinCodeController.text,

    };
    File? pic, panCard, adharFront, adharBack;
    final response = await authRepository.updateAndUploadDocument(
      data,
      pic,
      panCard,
      adharFront,
      adharBack,
    );
    setState(() {
      _isLoading = false;
    });
    Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen,);
    debugPrint(response.toString());
    UpdateAndUploadModel updateAndUploadModel =
    UpdateAndUploadModel.fromJson(response);
    setState(() {
      // updateAndUploadModel.msg!;
    });
  }

}
