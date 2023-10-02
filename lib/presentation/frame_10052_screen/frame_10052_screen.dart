import '../frame_10052_screen/widgets/listellipse399_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class Frame10052Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 16,
                    top: 26,
                    right: 16,
                    bottom: 26,
                  ),
                  decoration: AppDecoration.fillDeeporangeA100.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Send invitation to your friends",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold16,
                      ),
                      Container(
                        width: getHorizontalSize(
                          340,
                        ),
                        margin: getMargin(
                          top: 9,
                          right: 17,
                        ),
                        child: Text(
                          "Sorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero/et velit interdum, ac aliquet odio mattis.",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            top: 22,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                height: getVerticalSize(
                                  36,
                                ),
                                width: getHorizontalSize(
                                  93,
                                ),
                                text: "Copy",
                                variant: ButtonVariant.FillWhiteA700,
                                padding: ButtonPadding.PaddingT9,
                                fontStyle: ButtonFontStyle.PoppinsRegular12,
                                prefixWidget: Container(
                                  margin: getMargin(
                                    right: 3,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgMaterialsymbolscontentcopyoutline,
                                  ),
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  93,
                                ),
                                margin: getMargin(
                                  left: 16,
                                ),
                                padding: getPadding(
                                  left: 14,
                                  top: 7,
                                  right: 14,
                                  bottom: 7,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSharing1,
                                      height: getSize(
                                        18,
                                      ),
                                      width: getSize(
                                        18,
                                      ),
                                      margin: getMargin(
                                        top: 1,
                                        bottom: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 3,
                                        top: 2,
                                      ),
                                      child: Text(
                                        "Nearby",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 37,
                              top: 27,
                              right: 37,
                              bottom: 12,
                            ),
                            child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    22,
                                  ),
                                );
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Listellipse399ItemWidget();
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
