import 'package:flutter/material.dart';
import 'package:urban_partner/common/common.dart';
import 'package:urban_partner/repository/auth_repository.dart';
import 'package:urban_partner/widgets/custom_button.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/size_utils.dart';
import '../../core/utils/utils.dart';
import '../../widgets/custom_text_form_field.dart';

class CreateSupportScreen extends StatefulWidget {
  const CreateSupportScreen();

  @override
  State<CreateSupportScreen> createState() => _CreateSupportScreenState();
}

class _CreateSupportScreenState extends State<CreateSupportScreen> {
  TextEditingController _supportController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "Raise your query",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 50,
              ),
              CustomTextFormField(
                  validator: (value) {
                    if (value == null) {
                      return "Please enter your query";
                    }
                  },
                  focusNode: FocusNode(),
                  controller: _supportController,
                  margin: getMargin(left: 16, top: 8, right: 16),
                  textInputAction: TextInputAction.done),
              SizedBox(
                height: 50,
              ),
               CustomButton(
                      width: getHorizontalSize(201),
                      text: "Submit",
                      shape: ButtonShape.RoundedBorder26,
                      padding: ButtonPadding.PaddingAll15,
                      fontStyle: ButtonFontStyle.InterSemiBold24,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          createSupportQuery();
                        }
                      }),
            ],
          ),
        ),
      ),
    );
  }

  createSupportQuery() async {
    var data = {
      "name": await Common.currentUser!.fullName,
      'email': await Common.currentUser!.email,
      'mobile': await Common.currentUser!.phone,
      "query": _supportController.text
    };
    final authRepository = AuthRepository();
    final response = await authRepository.createSupportApi(data);
    debugPrint(response.toString());
    if (response['status'] == 200) {
      Utils.showCustomAlertDialog(context,
          response['message'],
          "Your query has been successfully");
    } else
      (Utils.toastMassage("Something went wrong"));
    // Navigator.pop(context);
  }

}
