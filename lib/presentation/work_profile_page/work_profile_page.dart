import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/update_and_upload_model.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/presentation/home_screen/home_screen.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';

import '../../repository/auth_repository.dart';
import '../../widgets/custom_icon_button.dart';

class WorkProfilePage extends StatefulWidget {
  WorkProfilePage(TabController tabviewController);

  @override
  _WorkProfilePageState createState() => _WorkProfilePageState();
// onTapImgMaterialsymbols(BuildContext context) {
//   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
// }
//
// onTapImgMaterialsymbols1(BuildContext context) {
//   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
// }
//
// onTapImgMaterialsymbols2(BuildContext context) {
//   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
// }
//
// onTapImgMaterialsymbols3(BuildContext context) {
//   Navigator.pushNamed(context, AppRoutes.frame7913Screen);
// }
//
// onTapGridicons(BuildContext context) {
//   Navigator.pushNamed(context, AppRoutes.frame37355Screen);
// }
}

class _WorkProfilePageState extends State<WorkProfilePage>
    with AutomaticKeepAliveClientMixin<WorkProfilePage> {
  TextEditingController rectangle3405Controller = TextEditingController();
  TextEditingController rectangle3411Controller = TextEditingController();
  File? pic;
  File? panCard;
  File? adharFront;
  File? adharBack;
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  UpdateAndUploadModel? updateAndUploadModel;


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
                child: Form(
              key: _formKey,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding: getPadding(left: 16, top: 18, right: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(right: 98),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade400),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 50,
                                          child: pic == null
                                              ? Text(
                                                  '  Upload \nyour selfie',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade400),
                                                )
                                              : Container(
                                            height: 100,
                                                width: 100,
                                                child: Image.file(pic!,
                                                    fit: BoxFit.cover,width: 150,height: 150,),
                                              ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgMaterialsymbolscloudupload,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(top: 31, bottom: 38),
                                        onTap: () {
                                          btm(() async {
                                            pic = await _getImageByCamera();
                                            if (pic != null) {
                                              setState(() {
                                                print(pic!.path);
                                              });
                                            }
                                            //camera open here
                                          }, () async {
                                            pic = await _getImageByGallery();
                                            if (pic != null) {
                                              setState(() {
                                                print(pic!.path);
                                              });
                                            }
                                            //gallery open here
                                          });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("PAN Card",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ))),
                          CustomTextFormField(
                              validator: _validatePAN,
                              focusNode: FocusNode(),
                              controller: rectangle3405Controller,
                              margin: getMargin(top: 8)),
                          Padding(
                              padding: getPadding(top: 11, right: 98),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade400),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      width: getHorizontalSize(130),
                                      height: 80,
                                      margin: getMargin(
                                        bottom: 2,
                                      ),
                                      child: panCard == null
                                          ? Center(
                                              child: Text(
                                                  "Upload pan card\nimage Here",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Black90087),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30, right: 30),
                                              child: Transform(
                                                transform: Matrix4.rotationZ(
                                                    -90 * 3.1415926535 / 180),
                                                alignment: Alignment.center,
                                                child: Image.file(
                                                  panCard!,
                                                ),
                                              ),
                                            ),
                                    ),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgMaterialsymbolscloudupload,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(
                                            left: 108, top: 28, bottom: 41),
                                        onTap: () {
                                          btm(() async {
                                            panCard = await _getImageByCamera();
                                            if (panCard != null) {
                                              setState(() {
                                                print(panCard!.path);
                                              });
                                            }
                                            //camera open here
                                          }, () async {
                                            panCard =
                                                await _getImageByGallery();
                                            if (panCard != null) {
                                              setState(() {
                                                print(panCard!.path);
                                              });
                                            }
                                            //gallery open here
                                          });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("Aadhar  Card",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ))),
                          CustomTextFormField(
                              validator: _validateAadhar,
                              focusNode: FocusNode(),
                              controller: rectangle3411Controller,
                              margin: getMargin(top: 8),
                              textInputAction: TextInputAction.done),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("Front Side",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium13Black900
                                      .copyWith(
                                    fontFamily: 'Inter',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          Padding(
                              padding: getPadding(top: 8, right: 98),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade400),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      width: getHorizontalSize(130),
                                      height: 80,
                                      margin: getMargin(
                                        bottom: 2,
                                      ),
                                      child: adharFront == null
                                          ? Text(
                                              "Upload Adhar card\nfront side image Here",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular16Black90087)
                                          : Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30, right: 30),
                                              child: Transform(
                                                transform: Matrix4.rotationZ(
                                                    -90 * 3.1415926535 / 180),
                                                alignment: Alignment.center,
                                                child: Image.file(
                                                  adharFront!,
                                                ),
                                              ),
                                            ),
                                    ),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgMaterialsymbolscloudupload,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(
                                            left: 108, top: 28, bottom: 41),
                                        onTap: () {
                                          btm(() async {
                                            adharFront =
                                                await _getImageByCamera();
                                            if (adharFront != null) {
                                              setState(() {
                                                print(adharFront!.path);
                                              });
                                            }
                                            //camera open here
                                          }, () async {
                                            adharFront =
                                                await _getImageByGallery();
                                            if (adharFront != null) {
                                              setState(() {
                                                print(adharFront!.path);
                                              });
                                            }
                                            //gallery open here
                                          });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 8),
                              child: Text("Back Side",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium13Black900
                                      .copyWith(
                                    fontFamily: 'Inter',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          Padding(
                              padding: getPadding(top: 8, right: 98),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade400),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      width: getHorizontalSize(130),
                                      height: 80,
                                      margin: getMargin(
                                        bottom: 2,
                                      ),
                                      child: adharBack == null
                                          ? Center(
                                              child: Text(
                                                  "Upload Adhar card\nback side image Here",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Black90087),
                                            )
                                          : Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30, right: 30),
                                              child: Transform(
                                                transform: Matrix4.rotationZ(
                                                    -90 * 3.1415926535 / 180),
                                                alignment: Alignment.center,
                                                child: Image.file(
                                                  adharBack!,
                                                ),
                                              ),
                                            ),
                                    ),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgMaterialsymbolscloudupload,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(
                                            left: 108, top: 31, bottom: 38),
                                        onTap: () {
                                          btm(() async {
                                            adharBack =
                                                await _getImageByCamera();
                                            if (adharBack != null) {
                                              setState(() {
                                                print(adharBack!.path);
                                              });
                                            }
                                            //camera open here
                                          }, () async {
                                            adharBack =
                                                await _getImageByGallery();
                                            if (adharBack != null) {
                                              setState(() {
                                                print(adharBack!.path);
                                              });
                                            }
                                            //gallery open here
                                          });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 28),
                              child: Text("Select other document",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ))),
                          Container(
                              width: double.maxFinite,
                              child: GestureDetector(
                                  onTap: () {
                                    // onTapGridicons(context);
                                  },
                                  child: Container(
                                      width: getHorizontalSize(358),
                                      margin: getMargin(top: 8),
                                      padding: getPadding(
                                          left: 13,
                                          top: 17,
                                          right: 13,
                                          bottom: 17),
                                      decoration: AppDecoration
                                          .outlineBluegray100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
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
                                                height: getVerticalSize(5),
                                                width: getHorizontalSize(10),
                                                margin: getMargin(top: 1))
                                          ])))),
                          _isLoading
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : CustomButton(
                                  onTap: () {
                                    if (_formKey.currentState!.validate()) {
                                      uploadAndUpdateDocument();
                                    }
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Dashboard()));
                                  },
                                  width: getHorizontalSize(195),
                                  text: "Save",
                                  margin: getMargin(top: 100),
                                  shape: ButtonShape.RoundedBorder26,
                                  padding: ButtonPadding.PaddingAll11,
                                  fontStyle: ButtonFontStyle.InterSemiBold24,
                                  alignment: Alignment.center)
                        ]))
              ]),
            ))),
      ),
    );
  }

  Future<void> btm(cameraSelect, gallerySelected) {
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
                                Navigator.pop(context);
                                cameraSelect();
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
                              onTap: () {
                                Navigator.pop(context);
                                gallerySelected();
                              },
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

  void uploadAndUpdateDocument() async {
    setState(() {
      _isLoading = true;
    });
    final authRepository = AuthRepository();
    var data = {
      'PanNumber': rectangle3405Controller.text,
      'aadharCardNumber': rectangle3411Controller.text,
    };
    final response = await authRepository.updateAndUploadDocument(
      data,
      pic!,
      panCard!,
      adharFront!,
      adharBack!,
    );
    setState(() {
      _isLoading = false;
    });
    updateAndUploadModel = UpdateAndUploadModel.fromJson(response);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));

    debugPrint(response.toString());

    setState(() {
      //updateAndUploadModel.msg!;
    });
  }

  Future<File?> _getImageByGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: ImageSource
            .gallery); // You can also use ImageSource.camera for capturing a new photo.

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      return imageFile;
      // Use the 'imageFile' for uploading or displaying the selected image.
    } else {
      // User canceled the image picker.
      return null;
    }
  }

  Future<File?> _getImageByCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: ImageSource
            .camera); // You can also use ImageSource.camera for capturing a new photo.

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      return imageFile;
      // Use the 'imageFile' for uploading or displaying the selected image.
    } else {
      // User canceled the image picker.
      return null;
    }
  }

  String? _validatePAN(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter PAN number';
    }
    // Basic PAN card format validation
    RegExp panRegex = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]$');
    if (!panRegex.hasMatch(value)) {
      return 'Invalid PAN number';
    }
    return null; // PAN number is valid
  }

  String? _validateAadhar(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Aadhar number';
    }
    // Basic Aadhar card format validation
    RegExp aadharRegex = RegExp(r'^[0-9]{12}$');
    if (!aadharRegex.hasMatch(value)) {
      return 'Invalid Aadhar number';
    }
    return null; // Aadhar number is valid
  }
}
