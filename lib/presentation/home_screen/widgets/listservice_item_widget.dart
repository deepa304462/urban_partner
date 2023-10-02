import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/custom_button.dart';
import 'package:flutter/material.dart';



// ignore: must_be_immutable
class ListserviceItemWidget extends StatelessWidget {
  ListserviceItemWidget({this.onTapReject, this.onTapAccept});

  VoidCallback? onTapReject;

  VoidCallback? onTapAccept;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 16,
          top: 8,
          right: 16,
          bottom: 8,
        ),
        decoration: AppDecoration.outlineBlack9003f2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder11,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                right: 73,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium13Black900.copyWith(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Time slot",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium13Black900.copyWith(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
                right: 19,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      95,
                    ),
                    child: Text(
                      "5 Window AC \nJet Service",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold14.copyWith(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 17,
                    ),
                    child: Text(
                      "12-5-21 10:00AM",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium14.copyWith(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 13,
                right: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium13Black900.copyWith(
                          fontFamily: 'Inter',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            "₹349",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14.copyWith(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup37548,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    margin: getMargin(
                      left: 4,
                      bottom: 4
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      116,
                    ),
                    margin: getMargin(
                      left: 2,
                    ),
                    child: Text(
                      "Model Town, Delhi\n110044",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium13Black900.copyWith(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 20,
                  top: 13,
                  right: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      height: getVerticalSize(31),
                      width: getHorizontalSize(118),
                      text: "Reject",
                      variant: ButtonVariant.FillRed600,
                      onTap: () {
                        showRejectDialog(context);
                      },
                    ),
                    //
                    // CustomButton(
                    //   height: getVerticalSize(
                    //     31,
                    //   ),
                    //   width: getHorizontalSize(
                    //     118,
                    //   ),
                    //   text: "Reject",
                    //   variant: ButtonVariant.FillRed600,
                    //
                    //   onTap: () {
                    //     onTapReject!(
                    //         // context
                    //         );
                    //   },
                    // ),
                    // CustomButton(
                    //   height: getVerticalSize(
                    //     31,
                    //   ),
                    //   width: getHorizontalSize(
                    //     118,
                    //   ),
                    //   text: "Accept",
                    //   variant: ButtonVariant.FillRed600,
                    //
                    //   onTap: () {
                    //     onTapAccept!(
                    //         // context
                    //         );
                    //   },
                    // ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Are you sure to accept?'),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(); // Close the first dialog
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Color(0xFFE0DAA3),
                                                content: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Image.asset('assets/images/accepted.png'), // Replace 'assets/images/accepted.png' with the actual path to your image
                                                    SizedBox(height: 20),
                                                    Text('Your job accepted successfully'),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                          Future.delayed(Duration(seconds: 2), () {
                                            Navigator.of(context).popUntil((route) => route.isFirst); // Close both dialog boxes after 2 seconds
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF094DB3),
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: Container(
                                          height: getVerticalSize(38),
                                          width: getHorizontalSize(71),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF094DB3),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Yes",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      OutlinedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(); // Close the first dialog
                                        },
                                        style: OutlinedButton.styleFrom(
                                          side: BorderSide(color: Color(0xFF094DB3)),
                                        ),
                                        child: Text(
                                          'No',
                                          style: TextStyle(color: Color(0xFF094DB3)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );


                          },
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                        elevation: MaterialStateProperty.all<double>(0),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: Container(
                        height: getVerticalSize(34),
                        width: getHorizontalSize(118),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF094DB3), // Blue color at 100%
                              Color(0xFF09B3B3), // Teal color at 47%
                            ],
                            stops: [-2.0, 0.5],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Accept",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
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
    );
  }
}
void showRejectDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Are you sure to reject?'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Color(0xFFECADAD),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/rejected.png'), // Replace 'path_to_cross_gif' with the actual path to your GIF image
                              SizedBox(height: 20),
                              Text('Your job rejected successfully'),
                            ],
                          ),
                        );
                      },
                    );

                    // Close both dialog boxes after 2 seconds
                    Future.delayed(Duration(seconds: 2), () {
                      Navigator.of(context).pop(); // Close the second dialog box
                      Navigator.of(context).pop(); // Close the first dialog box
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF094DB3), // Set the button color here
                  ),
                  child: Text('Yes'),
                ),

                SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF094DB3)),
                  ),
                  child: Text(
                    'No',
                    style: TextStyle(color: Color(0xFF094DB3)),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

