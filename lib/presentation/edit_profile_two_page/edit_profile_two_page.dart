import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

class EditProfileTwoPage extends StatefulWidget {
  @override
  _EditProfileTwoPageState createState() => _EditProfileTwoPageState();
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen);
  }
}

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class _EditProfileTwoPageState extends State<EditProfileTwoPage>
    with AutomaticKeepAliveClientMixin<EditProfileTwoPage> {
  TextEditingController rectangle3405Controller = TextEditingController();

  TextEditingController groupsixtyController = TextEditingController();

  TextEditingController rectangle3412Controller = TextEditingController();

  TextEditingController rectangle3413Controller = TextEditingController();

  TextEditingController rectangle3414Controller = TextEditingController();

  @override
  bool get wantKeepAlive => true;
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
                          padding: getPadding(left: 16, top: 24, right: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Save your Bank Details for refer bonus",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium16),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Text("Bank Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: rectangle3405Controller,
                                    margin: getMargin(top: 8)),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Text("Branch Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: groupsixtyController,
                                    margin: getMargin(top: 8),
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 13,
                                            top: 17,
                                            right: 13,
                                            bottom: 17),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.black900),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgVectorBlack9005x10)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(40))),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Text("Account Holder Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: rectangle3412Controller,
                                    margin: getMargin(top: 8)),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Text("Confirm Account Number",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: rectangle3413Controller,
                                    margin: getMargin(top: 8)),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Text("IFSC Code",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: rectangle3414Controller,
                                    margin: getMargin(top: 8),
                                    textInputAction: TextInputAction.done),
                                CustomButton(
                                    width: getHorizontalSize(195),
                                    text: "Save",
                                    margin: getMargin(top: 51),
                                    shape: ButtonShape.RoundedBorder26,
                                    padding: ButtonPadding.PaddingAll11,
                                    fontStyle: ButtonFontStyle.InterSemiBold24,
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
}
