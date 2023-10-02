import 'package:urban_partner/presentation/end_screen/end_screen.dart';
import 'package:urban_partner/presentation/frame_37383_screen/frame_37383_screen.dart';
import 'package:urban_partner/presentation/home_one_screen/home_one_screen.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/presentation/ongoing_press_screen/ongoing_press_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';

import '../job_card_screen/widgets/job_card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_checkbox.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class JobCardScreen extends StatelessWidget {
  TextEditingController rectangle4493Controller = TextEditingController();

  TextEditingController rectangle4493Controller1 = TextEditingController();

  TextEditingController rectangle4493Controller2 = TextEditingController();

  TextEditingController rectangle4493Controller3 = TextEditingController();

  TextEditingController rectangle449Controller4 = TextEditingController();

  bool isCheckbox = false;

  bool isCheckbox1 = false;

  bool isCheckbox2 = false;

  bool isCheckbox3 = false;

  bool isCheckbox4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black, // Set the leading icon color to black
              ),
              title: Center(child: AppbarSubtitle1(text: "Job Card")),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OngoingPressScreen())); // Navigate back to the previous screen (home page)
                },
              ),
            ),

            // appBar: CustomAppBar(
            //     height: getVerticalSize(66),
            //     leadingWidth: 58,
            //     leading: AppbarIconbutton(
            //         svgPath: ImageConstant.imgGroup295,
            //         onTap: () {
            //           onTapGroup301(context);
            //         }),
            //     centerTitle: true,
            //     title: AppbarSubtitle(text: "Job Card")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 8),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Divider(
                                  height: getVerticalSize(2),
                                  thickness: getVerticalSize(2),
                                  color: ColorConstant.blueGray100),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 13, right: 19),
                                  padding: getPadding(
                                      left: 17, top: 15, right: 17, bottom: 15),
                                  decoration: AppDecoration.outlineBluegray100
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 2),
                                            child: Row(children: [
                                              Text("Partner name",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium13Black900),
                                              Padding(
                                                  padding: getPadding(left: 83),
                                                  child: Text("Item",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium13Black900))
                                            ])),
                                        Padding(
                                            padding:
                                                getPadding(left: 2, top: 4),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 3, bottom: 2),
                                                      child: Text("Loren Epsom",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium16)),
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          151),
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          rectangle4493Controller,
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineBlue900,
                                                      shape: TextFormFieldShape
                                                          .RoundedBorder4)
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 2, top: 20, right: 95),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Item type",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium13Black900),
                                                  Text("Capacity",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium13Black900)
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(left: 2, top: 3),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: CustomTextFormField(
                                                          focusNode:
                                                              FocusNode(),
                                                          controller:
                                                              rectangle4493Controller1,
                                                          margin: getMargin(
                                                              right: 8),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .OutlineBlue900,
                                                          shape: TextFormFieldShape
                                                              .RoundedBorder4)),
                                                  Expanded(
                                                      child: CustomTextFormField(
                                                          focusNode:
                                                              FocusNode(),
                                                          controller:
                                                              rectangle4493Controller2,
                                                          margin: getMargin(
                                                              left: 8),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .OutlineBlue900,
                                                          shape: TextFormFieldShape
                                                              .RoundedBorder4))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 2, top: 23, right: 76),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("Reg No.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium13Black900)),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "Other Detail",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium13Black900))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(left: 2, top: 6),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: CustomTextFormField(
                                                          focusNode:
                                                              FocusNode(),
                                                          controller:
                                                              rectangle4493Controller3,
                                                          margin: getMargin(
                                                              right: 8),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .OutlineBlue900,
                                                          shape: TextFormFieldShape
                                                              .RoundedBorder4)),
                                                  Expanded(
                                                      child: CustomTextFormField(
                                                          focusNode:
                                                              FocusNode(),
                                                          controller:
                                                              rectangle449Controller4,
                                                          margin: getMargin(
                                                              left: 8),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .OutlineBlue900,
                                                          shape: TextFormFieldShape
                                                              .RoundedBorder4))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 23),
                                      child: Text("Images",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium16))),
                              Padding(
                                  padding:
                                      getPadding(left: 15, top: 11, right: 16),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(79),
                                              crossAxisCount: 3,
                                              mainAxisSpacing:
                                                  getHorizontalSize(14),
                                              crossAxisSpacing:
                                                  getHorizontalSize(14)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 9,
                                      itemBuilder: (context, index) {
                                        return JobCardItemWidget();
                                      })),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 23),
                                      child: Text("Pre check-up",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium16))),
                              CustomCheckbox(
                                  width: getHorizontalSize(358),
                                  text: "Condenser coil check",
                                  iconSize: getHorizontalSize(19),
                                  value: isCheckbox,
                                  margin:
                                      getMargin(left: 15, top: 11, right: 17),
                                  fontStyle: CheckboxFontStyle.InterBold14,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    isCheckbox = value;
                                  }),
                              CustomCheckbox(
                                  width: getHorizontalSize(358),
                                  text: "Gas leakage check",
                                  iconSize: getHorizontalSize(19),
                                  value: isCheckbox1,
                                  margin:
                                      getMargin(left: 15, top: 20, right: 17),
                                  fontStyle: CheckboxFontStyle.InterBold14,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    isCheckbox1 = value;
                                  }),
                              CustomCheckbox(
                                  width: getHorizontalSize(357),
                                  text: "Compressor check",
                                  iconSize: getHorizontalSize(19),
                                  value: isCheckbox2,
                                  margin:
                                      getMargin(left: 16, top: 20, right: 17),
                                  fontStyle: CheckboxFontStyle.InterBold14,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    isCheckbox2 = value;
                                  }),
                              CustomCheckbox(
                                  width: getHorizontalSize(357),
                                  text: "Compressor check",
                                  iconSize: getHorizontalSize(19),
                                  value: isCheckbox3,
                                  margin:
                                      getMargin(left: 16, top: 20, right: 17),
                                  fontStyle: CheckboxFontStyle.InterBold14,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    isCheckbox3 = value;
                                  }),
                              CustomCheckbox(
                                  width: getHorizontalSize(357),
                                  text: "Compressor check",
                                  iconSize: getHorizontalSize(19),
                                  value: isCheckbox4,
                                  margin:
                                      getMargin(left: 16, top: 20, right: 17),
                                  fontStyle: CheckboxFontStyle.InterBold14,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    isCheckbox4 = value;
                                  }),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Divider(
                                      height: getVerticalSize(2),
                                      thickness: getVerticalSize(2),
                                      color: ColorConstant.blueGray100)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 14, top: 19),
                                      child: Text("Work to be done",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14))),
                              Container(
                                  width: getHorizontalSize(358),
                                  margin:
                                      getMargin(left: 16, top: 14, right: 16),
                                  padding: getPadding(
                                      left: 20, top: 16, right: 20, bottom: 16),
                                  decoration: AppDecoration.fillGray100
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(114),
                                            margin: getMargin(bottom: 3),
                                            child: Text(
                                                "Gas Charging\nCoil Repairing",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold14))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(top: 19, right: 16),
                                      child: Text("Add New Job Card",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterMedium16Blue900
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))),
                              SizedBox(height: 50,),
                              CustomButton(
                                  text: "UPLOAD",
                                  margin:
                                      getMargin(left: 23, bottom: 5, right: 23),
                                  shape: ButtonShape.RoundedBorder29,
                                  padding: ButtonPadding.PaddingAll19,
                                  fontStyle: ButtonFontStyle.InterMedium16,
                                  onTap: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> Frame37383Screen()));
                                    onTapUpload(context);
                                  })
                            ]))))));
  }

  // onTapUpload(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame37383Screen);
  // }

  onTapGroup301(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }
}
// void onTapUpload(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         content: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               width: double.maxFinite,
//               child: Container(
//                 padding: getPadding(
//                   left: 52,
//                   top: 42,
//                   right: 52,
//                   bottom: 20,
//                 ),
//                 decoration: AppDecoration.fillOrangeA100.copyWith(
//                   borderRadius: BorderRadiusStyle.roundedBorder16,
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Card(
//                       clipBehavior: Clip.antiAlias,
//                       elevation: 0,
//                       margin: EdgeInsets.all(0),
//                       shape: RoundedRectangleBorder(
//                         side: BorderSide(
//                           color: ColorConstant.blueGray100,
//                           width: getHorizontalSize(12),
//                         ),
//                         borderRadius: BorderRadiusStyle.circleBorder41,
//                       ),
//                       child: Container(
//                         height: getSize(82),
//                         width: getSize(82),
//                         decoration: AppDecoration.outlineBluegray1002.copyWith(
//                           borderRadius: BorderRadiusStyle.circleBorder41,
//                         ),
//                         child: Stack(
//                           alignment: Alignment.center,
//                           children: [
//                             Align(
//                               alignment: Alignment.center,
//                               child: GestureDetector(
//                                 onTap: (){
//                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>EndScreen()));
//                                 },
//                                 child: Container(
//                                   height: getSize(82),
//                                   width: getSize(82),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(getHorizontalSize(41)),
//                                     border: Border.all(
//                                       color: ColorConstant.greenA700,
//                                       width: getHorizontalSize(12),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.center,
//                               child: Text(
//                                 "5:00",
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtInterMedium205,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(top: 18, bottom: 49),
//                       child: Text(
//                         "Waiting For customer’s response",
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtInterMedium16Blue900,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
//
//   Future.delayed(Duration(seconds: 2), () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) =>Dashboard()),
//     );
//   });
// }
onTapUpload(BuildContext context) {
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
              'Waiting for Customers Response' ,
              style: TextStyle(fontSize: 16,
                  color:  Color(0xFF094DB3)),
            ),
          ],
        ),
      );
    },
  );

  Future.delayed(Duration(seconds: 3), () {
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
                  'Customer Accepted ',
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
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard() ));// Dismiss the dialog
    });

  });
}