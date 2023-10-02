import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class JobCardItemWidget extends StatelessWidget {
  JobCardItemWidget();

  TextEditingController groupController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      width: getHorizontalSize(
        110,
      ),
      focusNode: FocusNode(),
      controller: groupController,
      hintText: "Selfie",
      shape: TextFormFieldShape.RoundedBorder4,
      padding: TextFormFieldPadding.PaddingAll30,
      fontStyle: TextFormFieldFontStyle.MulishRomanMedium14,
      textInputAction: TextInputAction.done,
    );
  }
}
