import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class Frame37554Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: getHorizontalSize(360),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 16, top: 15, right: 16, bottom: 15),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("More Product Details",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold14),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Brand -",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14Black90099)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 67, top: 1),
                                              child: Text("Loren Epsom",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterBold14))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 23),
                                        child: Row(children: [
                                          Text("Capacity -",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterMedium14Black90099),
                                          Padding(
                                              padding: getPadding(left: 47),
                                              child: Text("Loren Epsom",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 22, right: 29),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 36),
                                                  child: Text("Features -",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14Black90099)),
                                              Container(
                                                  width: getHorizontalSize(182),
                                                  child: Text(
                                                      "Loren Epsom, Loren Epsom\nLoren Epsom, loren Epsom\nLoren Epsom",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 21),
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Color -",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14Black90099)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 70, top: 1),
                                              child: Text("Loren Epsom",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14))
                                        ])),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapTxtViewless(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(top: 75),
                                                child: Text("View Less",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold14Blue900
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)))))
                                  ])))
                    ]))));
  }

  onTapTxtViewless(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailPageScreen);
  }
}
