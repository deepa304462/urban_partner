import 'package:urban_partner/presentation/iphone_14_eighteen_screen/iphone_14_eighteen_screen.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

import '../end_screen/widgets/listcheckmark1_item_widget.dart';
import '../end_screen/widgets/listcheckmark_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class EndScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: getPadding(top: 8, bottom: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        AppbarIconbutton(
                          svgPath: ImageConstant.imgGroup295,
                          onTap: () {
                            onTapGroup302(context);
                          },
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        AppbarSubtitle(text: "End Job"),
                      ],
                    ),
                    Divider(
                      height: getVerticalSize(2),
                      thickness: getVerticalSize(2),
                      color: ColorConstant.blueGray100,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(left: 16, top: 19),
                        child: Text(
                          "What work did you do?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(left: 16, top: 21, right: 16),
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(12));
                        },
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return ListcheckmarkItemWidget();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: getMargin(bottom: 4),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: AppDecoration.outlineBlack9003f3.copyWith(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgRectangle4420,
                            height: getVerticalSize(14),
                            width: getHorizontalSize(390),
                            margin: getMargin(bottom: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(left: 37, top: 0, bottom: 10),
                      child: Text(
                        "Rs 5000",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold16,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        width: getHorizontalSize(220),
                        text: "Proceed",
                        margin: getMargin(left: 16, top: 0, bottom: 20),
                        shape: ButtonShape.RoundedBorder26,
                        padding: ButtonPadding.PaddingAll15,
                        onTap: () {
                          onTapProceed(context);
                        },
                        alignment: Alignment.topLeft,
                      ),
                      CustomButton(
                        height: getVerticalSize(52),
                        width: getHorizontalSize(109),
                        text: "New",
                        margin: getMargin(bottom: 20, right: 16),
                        variant: ButtonVariant.OutlineWhiteA700,
                        shape: ButtonShape.RoundedBorder26,
                        padding: ButtonPadding.PaddingAll15,
                        onTap: () {
                          onTapNew(context);
                        },
                        alignment: Alignment.topRight,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTapProceed(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 270,
          // color: Colors.white,

          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Container(
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(22),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: ColorConstant.yellow700,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(getHorizontalSize(20)),
                              topRight: Radius.circular(getHorizontalSize(20)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 30, top: 34),
                          child: Text(
                            "Total Amount",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium13Black900,
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 30, top: 4),
                          child: Text(
                            "₹5000",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold18,
                          ),
                        ),
                        CustomButton(
                          text: "Cash Payment",
                          margin: getMargin(left: 30, top: 33, right: 30),
                          shape: ButtonShape.RoundedBorder9,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.PoppinsBold1823,
                          alignment: Alignment.center,
                          onTap: (){
                            onTapCashpayment(context);
                          },
                        ),
                        CustomButton(
                          height: getVerticalSize(46),
                          text: "Online Payment",
                          margin: getMargin(left: 30, top: 13, right: 30, bottom: 30),
                          variant: ButtonVariant.OutlineBlue900,
                          shape: ButtonShape.RoundedBorder9,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.PoppinsBold1823Blue900,
                          onTap: () {
                            onTapOnlinepayment(context);
                          },
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

      },
    );
  }
  onTapOnlinepayment(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFFFBD370),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/Ellipse 407.png',
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    '5:00',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                'Waiting for the payment',
                style: TextStyle(fontSize: 16,
                    color:  Color(0xFF094DB3)),
              ),
            ],
          ),
        );
      },
    );

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pop(); // Close the first dialog

      showDialog(
        context: context,
        builder: (BuildContext context) {
          // Show the dialog
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
                  'Payment Successfully Received ',
                  style: TextStyle(fontSize: 16,
                    color:  Color(0xFF094DB3)),
                ),
              ],
            )
          );
        },
      );

// Delay the dismissal of the dialog by 2 seconds
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pop();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Iphone14EighteenScreen() ));// Dismiss the dialog
      });

    });
  }


  void onTapNew(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        var nameController;
        return Container(
          height: 290,
          // color: Colors.white,

          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Container(
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL20,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .customBorderTL20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(22),
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.yellow700,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        getHorizontalSize(20)),
                                                    topRight: Radius.circular(
                                                        getHorizontalSize(
                                                            20))))),
                                        Padding(
                                            padding:
                                            getPadding(left: 16, top: 14),
                                            child: Text("Add New Service",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                AppStyle.txtInterBold14)),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            controller: nameController,
                                            hintText: "Service Name",
                                            margin: getMargin(
                                                left: 16, top: 19, right: 16),
                                            shape: TextFormFieldShape
                                                .CircleBorder22,
                                            padding: TextFormFieldPadding
                                                .PaddingAll13,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterMedium14,
                                            textInputAction:
                                            TextInputAction.done,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(53),
                                                width: getHorizontalSize(358),
                                                margin: getMargin(top: 30),
                                                child: Stack(
                                                    alignment:
                                                    Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                              getVerticalSize(
                                                                  44),
                                                              width:
                                                              getHorizontalSize(
                                                                  358),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          22)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blueGray100,
                                                                      width: getHorizontalSize(
                                                                          1))))),
                                                      Align(
                                                          alignment:
                                                          Alignment.topLeft,
                                                          child: Container(
                                                              width:
                                                              getHorizontalSize(
                                                                  47),
                                                              margin: getMargin(
                                                                  left: 15),
                                                              padding: getPadding(
                                                                  left: 9,
                                                                  top: 1,
                                                                  right: 9,
                                                                  bottom: 1),
                                                              decoration: AppDecoration
                                                                  .txtFillWhiteA700
                                                                  .copyWith(
                                                                  borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder8),
                                                              child: Text(
                                                                  "Price",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtInterMedium12Black900)))
                                                    ]))),
                                        CustomButton(
                                            text: "Add Service",
                                            margin: getMargin(
                                                left: 31,
                                                top: 30,
                                                right: 54,
                                                bottom: 22),
                                            shape: ButtonShape.RoundedBorder17,
                                            padding: ButtonPadding.PaddingAll15,
                                            fontStyle:
                                            ButtonFontStyle.InterBold14,
                                            onTap: () {
                                              onTapAddservice(context);
                                            })
                                      ])))
                        ]),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  // onTapOnlinepayment(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame37555Screen);
  // }
  onTapCashpayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14EighteenScreen);
  }
  onTapAddservice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.endScreen);
  }
  void onTapGroup302(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }
}
