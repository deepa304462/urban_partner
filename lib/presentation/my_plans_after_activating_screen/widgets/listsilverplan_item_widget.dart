import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';

import '../../../models/get_all_subscription_plan.dart';
import '../../../repository/auth_repository.dart';

// ignore: must_be_immutable
class ListsilverplanItemWidget extends StatefulWidget {
  ListsilverplanItemWidget(this.allSubscriptionList, {this.onTapStacksilverplan});

  VoidCallback? onTapStacksilverplan;
  Msg allSubscriptionList;

  @override
  State<ListsilverplanItemWidget> createState() =>
      _ListsilverplanItemWidgetState();
}


class _ListsilverplanItemWidgetState extends State<ListsilverplanItemWidget> {



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTapStacksilverplan?.call();
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.whiteA700,
            width: getHorizontalSize(
              1,
            ),
          ),
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Container(
          height: getVerticalSize(
            214,
          ),
          width: getHorizontalSize(
            332,
          ),
          padding: getPadding(
            left: 15,
            top: 14,
            right: 15,
            bottom: 14,
          ),
          decoration: AppDecoration.outlineWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 2,

                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.allSubscriptionList.planName.toString(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInriaSansBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Text(
                          "Benefits",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInriaSansRegular16,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          147,
                        ),
                        margin: getMargin(
                          left: 9,
                          top: 7,
                        ),
                        child: Text(
                          "2 Free T-Shirt\nPer lead cost 100 Rs\nNo charge on per job\n1 year validity",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInriaSansRegular16,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: getPadding(
                            top: 19,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    widget.allSubscriptionList.amount.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInriaSansBold20Black900,
                                  ),
                                  Text(
                                    "/-",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInriaSansBold20Black900,
                                  ),
                                ],
                              ),
                              Container(
                                height: getVerticalSize(
                                  24,
                                ),
                                width: getHorizontalSize(
                                  74,
                                ),
                                margin: getMargin(
                                  left: 11,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "₹2500.0",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                        AppStyle.txtInriaSansBold20Black900,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          bottom: 9,
                                        ),
                                        child: SizedBox(
                                          width: getHorizontalSize(
                                            74,
                                          ),
                                          child: Divider(
                                            height: getVerticalSize(
                                              2,
                                            ),
                                            thickness: getVerticalSize(
                                              2,
                                            ),
                                            color: ColorConstant.black900,
                                          ),
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
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  35,
                ),
                width: getHorizontalSize(
                  75,
                ),
                text: "Select",
                margin: getMargin(
                  top: 1,
                  right: 1,
                ),
                variant: ButtonVariant.OutlineBlue900_1,
                padding: ButtonPadding.PaddingAll8,
                fontStyle: ButtonFontStyle.InriaSansBold16,
                alignment: Alignment.topRight,
              ),
            ],
          ),
        ),
      ));


  }

}