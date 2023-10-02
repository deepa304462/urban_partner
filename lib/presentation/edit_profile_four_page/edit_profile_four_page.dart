import 'package:flutter/material.dart';import 'package:urban_partner/core/app_export.dart';import 'package:urban_partner/widgets/custom_button.dart';import 'package:urban_partner/widgets/custom_drop_down.dart';import 'package:urban_partner/widgets/custom_text_form_field.dart';class EditProfileFourPage extends StatefulWidget {@override _EditProfileFourPageState createState() =>  _EditProfileFourPageState();
onTapSave(BuildContext context) { Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen); } 
 }

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class _EditProfileFourPageState extends State<EditProfileFourPage> with  AutomaticKeepAliveClientMixin<EditProfileFourPage> {TextEditingController rectangle3405Controller = TextEditingController();

TextEditingController rectangle3411Controller = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

TextEditingController priceController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SingleChildScrollView(child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 16, top: 20, right: 16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("PAN Card", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium16), CustomTextFormField(focusNode: FocusNode(), controller: rectangle3405Controller, margin: getMargin(top: 7)), Padding(padding: getPadding(top: 8, right: 52), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.blueGray100, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: getVerticalSize(93), width: getHorizontalSize(171), padding: getPadding(left: 15, top: 8, right: 15, bottom: 8), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgRectangle4384, height: getVerticalSize(77), width: getHorizontalSize(132), radius: BorderRadius.circular(getHorizontalSize(2)), alignment: Alignment.centerLeft)]))), Container(height: getVerticalSize(34), width: getHorizontalSize(44), margin: getMargin(top: 29, bottom: 30), child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(svgPath: ImageConstant.imgMaterialsymbolsedit, height: getSize(24), width: getSize(24), alignment: Alignment.topRight), Align(alignment: Alignment.bottomLeft, child: Text("Edit ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMulishRomanMedium14.copyWith(decoration: TextDecoration.underline)))]))])), Padding(padding: getPadding(top: 20), child: Text("Aadhar  Card", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium16)), CustomTextFormField(focusNode: FocusNode(), controller: rectangle3411Controller, margin: getMargin(top: 7)), Padding(padding: getPadding(top: 19), child: Text("Front Side", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium14)), Padding(padding: getPadding(top: 7, right: 52), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.blueGray100, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: getVerticalSize(93), width: getHorizontalSize(171), padding: getPadding(left: 15, top: 4, right: 15, bottom: 4), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgRectangle4385, height: getVerticalSize(77), width: getHorizontalSize(132), radius: BorderRadius.circular(getHorizontalSize(2)), alignment: Alignment.bottomLeft)]))), Container(height: getVerticalSize(34), width: getHorizontalSize(44), margin: getMargin(top: 26, bottom: 33), child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(svgPath: ImageConstant.imgMaterialsymbolsedit, height: getSize(24), width: getSize(24), alignment: Alignment.topRight), Align(alignment: Alignment.bottomLeft, child: Text("Edit ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMulishRomanMedium14.copyWith(decoration: TextDecoration.underline)))]))])), Padding(padding: getPadding(top: 8), child: Text("Back Side", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium14)), Padding(padding: getPadding(top: 7, right: 52), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.blueGray100, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: getVerticalSize(93), width: getHorizontalSize(171), padding: getPadding(left: 15, top: 8, right: 15, bottom: 8), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgDummyaadharca, height: getVerticalSize(77), width: getHorizontalSize(132), radius: BorderRadius.circular(getHorizontalSize(2)), alignment: Alignment.centerLeft)]))), Container(height: getVerticalSize(34), width: getHorizontalSize(44), margin: getMargin(top: 24, bottom: 35), child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(svgPath: ImageConstant.imgMaterialsymbolsedit, height: getSize(24), width: getSize(24), alignment: Alignment.topRight), Align(alignment: Alignment.bottomLeft, child: Text("Edit ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMulishRomanMedium14.copyWith(decoration: TextDecoration.underline)))]))])), Padding(padding: getPadding(top: 27), child: Text("Select other document (optional)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium16)), CustomDropDown(focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30, right: 13), decoration: BoxDecoration(color: ColorConstant.black900), child: CustomImageView(svgPath: ImageConstant.imgVectorBlack9005x10)), hintText: "GST ", margin: getMargin(top: 6), items: dropdownItemList, onChanged: (value) {}), CustomTextFormField(focusNode: FocusNode(), controller: priceController, hintText: "Enter GST Number", margin: getMargin(top: 12), textInputAction: TextInputAction.done, textInputType: TextInputType.number), CustomButton(width: getHorizontalSize(195), text: "Save", margin: getMargin(top: 60), shape: ButtonShape.RoundedBorder26, padding: ButtonPadding.PaddingAll11, fontStyle: ButtonFontStyle.InterSemiBold24, onTap: () {onTapSave(context);}, alignment: Alignment.center)]))]))))); } 
onTapSave(BuildContext context) { Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen); } 
 }
