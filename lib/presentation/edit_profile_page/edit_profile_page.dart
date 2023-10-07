import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

import '../../models/get_profile_model.dart';
import '../../repository/auth_repository.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen);
  }
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => throw UnimplementedError();

  TextEditingController rectangle4447Controller = TextEditingController();

  TextEditingController rectangle4448Controller = TextEditingController();

  TextEditingController rectangle4450Controller = TextEditingController();

  TextEditingController rectangle4451Controller = TextEditingController();

  TextEditingController rectangle4452Controller = TextEditingController();

  TextEditingController rectangle4453Controller = TextEditingController();

  GetProfileModel getProfileModel = GetProfileModel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 16, top: 15, right: 16),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: rectangle4447Controller,
                                        margin: getMargin(top: 7),
                                        shape: TextFormFieldShape
                                            .RoundedBorder4),
                                    Padding(
                                        padding: getPadding(top: 33),
                                        child: Text("Mobile Number",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14)),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: rectangle4448Controller,
                                        margin: getMargin(top: 7),
                                        shape: TextFormFieldShape
                                            .RoundedBorder4),
                                    Padding(
                                        padding: getPadding(top: 33),
                                        child: Text("Email ID",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14)),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: rectangle4450Controller,
                                        margin: getMargin(top: 7),
                                        shape: TextFormFieldShape
                                            .RoundedBorder4),
                                    Padding(
                                        padding: getPadding(top: 33),
                                        child: Text("Father name",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14)),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: rectangle4451Controller,
                                        margin: getMargin(top: 7),
                                        shape: TextFormFieldShape
                                            .RoundedBorder4),
                                    Padding(
                                        padding: getPadding(top: 33),
                                        child: Text("Date of Birth",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14)),
                                    Container(
                                        height: getVerticalSize(32),
                                        width: getHorizontalSize(358),
                                        margin: getMargin(top: 7),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgSimplelineiconscalender,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  alignment: Alignment
                                                      .centerRight,
                                                  margin: getMargin(right: 7)),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(358),
                                                  focusNode: FocusNode(),
                                                  controller:
                                                  rectangle4452Controller,
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder4,
                                                  alignment: Alignment.center)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 33),
                                        child: Text("Qualification",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14)),
                                    Container(
                                        height: getVerticalSize(32),
                                        width: getHorizontalSize(358),
                                        margin: getMargin(top: 7),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVectorBlack9005x10,
                                                  height: getVerticalSize(5),
                                                  width: getHorizontalSize(10),
                                                  alignment: Alignment
                                                      .centerRight,
                                                  margin: getMargin(right: 14)),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(358),
                                                  focusNode: FocusNode(),
                                                  controller:
                                                  rectangle4453Controller,
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder4,
                                                  textInputAction:
                                                  TextInputAction.done,
                                                  alignment: Alignment.center)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 33),
                                        child: Text("Marital status",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14)),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: getHorizontalSize(358),
                                            margin: getMargin(top: 7),
                                            padding: getPadding(
                                                left: 14,
                                                top: 13,
                                                right: 14,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineBluegray100
                                                .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder2),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVectorBlack9005x10,
                                                      height: getVerticalSize(
                                                          5),
                                                      width: getHorizontalSize(
                                                          10),
                                                      margin: getMargin(top: 1))
                                                ]))),
                                    Padding(
                                        padding: getPadding(top: 33),
                                        child: Text("Local Address",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14)),
                                    Container(
                                        height: getVerticalSize(82),
                                        width: getHorizontalSize(358),
                                        margin: getMargin(top: 7),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4)),
                                            border: Border.all(
                                                color: ColorConstant
                                                    .blueGray100,
                                                width: getHorizontalSize(1)))),
                                    Padding(
                                        padding: getPadding(top: 33),
                                        child: Text("Permanent Address",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium14)),
                                    Container(
                                        height: getVerticalSize(82),
                                        width: getHorizontalSize(358),
                                        margin: getMargin(top: 6),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4)),
                                            border: Border.all(
                                                color: ColorConstant
                                                    .blueGray100,
                                                width: getHorizontalSize(1)))),
                                    CustomButton(
                                        width: getHorizontalSize(195),
                                        text: "Save",
                                        margin: getMargin(top: 51),
                                        shape: ButtonShape.RoundedBorder26,
                                        padding: ButtonPadding.PaddingAll11,
                                        fontStyle: ButtonFontStyle
                                            .InterSemiBold24,
                                        onTap: () {
                                          onTapSave(context);
                                        },
                                        alignment: Alignment.center)
                                  ]))
                        ])))));
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen);
  }

  getProfileData() async {
    final authRepository = AuthRepository();
    final response = await authRepository.getProfileApi();
    getProfileModel = GetProfileModel.fromJson(response);
    setState(() {

    });
  }
}

