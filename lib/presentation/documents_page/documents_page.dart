import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/aster_image_page/aster_image_page.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

class DocumentsPage extends StatefulWidget {
  @override
  _DocumentsPageState createState() => _DocumentsPageState();
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37407Screen);
  }
}

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class _DocumentsPageState extends State<DocumentsPage>
    with AutomaticKeepAliveClientMixin<DocumentsPage> {
  TextEditingController rectangle3405Controller = TextEditingController();

  TextEditingController rectangle3411Controller = TextEditingController();

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
                  padding: getPadding(left: 16, top: 17, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("PAN Card",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3405Controller,
                          margin: getMargin(top: 8)),
                      Padding(
                          padding: getPadding(top: 8, right: 98),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 16,
                                        top: 23,
                                        right: 16,
                                        bottom: 23),
                                    decoration: AppDecoration.outlineBluegray100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(130),
                                              margin: getMargin(top: 3),
                                              child: Text(
                                                  "Upload PAN Card\nImage Here",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Black90087))
                                        ])),
                                CustomImageView(
                                    onTap: () {
                                      btm();
                                    },
                                    svgPath: ImageConstant
                                        .imgMaterialsymbolscloudupload,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(
                                        left: 65, top: 31, bottom: 38))
                              ])),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("Aadhar  Card",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: rectangle3411Controller,
                          margin: getMargin(top: 8),
                          textInputAction: TextInputAction.done),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("Front Side",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium13Black900)),
                      Padding(
                          padding: getPadding(top: 8, right: 98),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 3, top: 24, right: 3, bottom: 24),
                                    decoration: AppDecoration.outlineBluegray100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(164),
                                              margin: getMargin(bottom: 2),
                                              child: Text(
                                                  "Upload Aadhar Card\nfront side Image Here",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Black90087))
                                        ])),
                                CustomImageView(
                                    onTap: () {
                                      btm();
                                    },
                                    svgPath: ImageConstant
                                        .imgMaterialsymbolscloudupload,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(
                                        left: 65, top: 28, bottom: 41))
                              ])),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Text("Back Side",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium13Black900)),
                      Padding(
                          padding: getPadding(top: 8, right: 98),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 3, top: 23, right: 3, bottom: 23),
                                    decoration: AppDecoration.outlineBluegray100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(164),
                                              margin: getMargin(top: 3),
                                              child: Text(
                                                  "Upload Aadhar Card\nback side Image Here",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Black90087))
                                        ])),
                                CustomImageView(
                                    onTap: () {
                                      btm();
                                    },
                                    svgPath: ImageConstant
                                        .imgMaterialsymbolscloudupload,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(
                                        left: 65, top: 31, bottom: 38))
                              ])),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Text("Select other document",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          width: getHorizontalSize(358),
                          margin: getMargin(top: 8),
                          padding: getPadding(
                              left: 13, top: 17, right: 13, bottom: 17),
                          decoration: AppDecoration.outlineBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgVectorBlack9005x10,
                                  height: getVerticalSize(5),
                                  width: getHorizontalSize(10),
                                  margin: getMargin(top: 1))
                            ],
                          ),
                        ),
                      ),
            CustomButton(
              text: "Save",
              margin: getMargin(left: 26, top: 122, right: 34),
              shape: ButtonShape.RoundedBorder9,
              padding: ButtonPadding.PaddingAll15,
              fontStyle: ButtonFontStyle.MulishRomanMedium14,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.transparent,
                      content: Container(
                        width: getHorizontalSize(550),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: getPadding(
                                left: 18,
                                top: 5,
                                right: 18,
                                bottom: 5,
                              ),
                              decoration: AppDecoration.fillOrangeA100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder11,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img7efs1,
                                    height: getVerticalSize(105),
                                    width: getHorizontalSize(105),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(52),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(top: 9),
                                    child: Text(
                                      "Your Request has been successfully sent",
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtMulishRomanMedium16,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(top: 13, bottom: 23),
                                    child: Text(
                                      "You can add your products after confirmation",
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtMulishRomanMedium16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              alignment: Alignment.center,
            )


            ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> btm() {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 26,
            right: 24,
            bottom: 26,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF094DB3), // Set the background color to #000000
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), // Add top-left radius of 15
              topRight: Radius.circular(25), // Add top-right radius of 15
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Upload Document",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium20.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "You can upload .jpef, .png, .pdf file and max size be 500kb",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsLight12.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 38,
                    top: 19,
                    right: 38,
                    bottom: 7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 2,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AsterImagePage()));
                              },
                              height: 64,
                              width: 64,
                              shape: IconButtonShape.CircleBorder32,
                              child: CustomImageView(
                                svgPath:
                                    ImageConstant.imgMaterialsymbolsphotocamera,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 8,
                              ),
                              child: Text(
                                "Camera",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium20.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 33,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 64,
                              width: 64,
                              margin: getMargin(
                                left: 34,
                              ),
                              shape: IconButtonShape.CircleBorder32,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMaterialsymbolBlue900,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 10,
                              ),
                              child: Text(
                                "Browse Gallery",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium20.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  onTapImgMaterialsymbols3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame7913Screen);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37407Screen);
  }
}
