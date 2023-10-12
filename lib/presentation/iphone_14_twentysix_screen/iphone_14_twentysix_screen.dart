import 'package:flutter/material.dart';
import 'package:urban_partner/common/common.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

class Iphone14TwentysixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 8, bottom: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                            height: 58,
                            width: 58,
                            alignment: Alignment.centerLeft,
                            onTap: () {
                              onTapBtnGroup295(context);
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant.imgGroup295)),
                        Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 200,
                                width: 200,
                                child: Image.network(Common.currentUser!.uploadSelfie.toString()),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(Common.currentUser!.fullName.toString(),style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Inter",
                                fontSize: 20
                              ),),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Email: ",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 16
                              ),),
                                  Text(Common.currentUser!.email.toString(),style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 16
                                  ),),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text("Phone: ",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 16
                              ),),
                                  Text(Common.currentUser!.phone.toString(),style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 16
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ),
                        CustomButton(
                            height: getVerticalSize(34),
                            width: getHorizontalSize(99),
                            text: "Download",
                            margin: getMargin(top: 57, bottom: 5),
                            variant: ButtonVariant.FillBlue900,
                            padding: ButtonPadding.PaddingAll8,
                            fontStyle: ButtonFontStyle.MuliBold14)
                      ])),
            )));
  }

  onTapBtnGroup295(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
