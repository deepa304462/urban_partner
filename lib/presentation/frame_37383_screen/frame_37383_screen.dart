import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class Frame37383Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: getMargin(all: 5),

          width: getHorizontalSize(
            380,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 52,
                    top: 42,
                    right: 52,
                    bottom: 42,
                  ),
                  decoration: AppDecoration.fillOrangeA100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorConstant.blueGray100,
                            width: getHorizontalSize(
                              5,
                            ),
                          ),
                          borderRadius: BorderRadiusStyle.circleBorder41,
                        ),
                        child: Container(
                          height: getSize(
                            100,
                          ),
                          width: getSize(
                            100,
                          ),
                          decoration:
                              AppDecoration.outlineBluegray1002.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder41,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getSize(
                                    92,
                                  ),
                                  width: getSize(
                                    92,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        51,
                                      ),
                                    ),
                                    border: Border.all(
                                      color: ColorConstant.greenA700,
                                      width: getHorizontalSize(
                                        10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "5:00",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium205,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 18,
                          bottom: 49,
                        ),
                        child: Text(
                          "Waiting For customer’s response",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium16Blue900,
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
