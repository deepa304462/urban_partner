import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';

import '../iphone_14_twentythree_screen/widgets/listtype1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_image.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class Iphone14TwentythreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 58,
          leading: AppbarIconbutton(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
              },
              svgPath: ImageConstant.imgGroup295),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "Lead Wallet",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(top: 12, bottom: 12),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Divider(
                height: getVerticalSize(2),
                thickness: getVerticalSize(2),
                color: ColorConstant.blueGray100),
            Container(
                margin: getMargin(left: 16, top: 22, right: 16),
                padding: getPadding(left: 121, top: 38, right: 121, bottom: 38),
                decoration: AppDecoration.fillTeal800
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("LEAD BALANCE",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold16),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text("10",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16WhiteA700))
                    ])),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: getPadding(left: 16, top: 44),
                    child: Text("Payment Details",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold14))),
            Expanded(
              child: Padding(
                padding: getPadding(left: 16, top: 15, right: 16),
                child: Column(
                  children: [
                    Container(
                      padding: getPadding(
                        left: 10,
                        top: 15,
                        right: 10,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineBluegray1003.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder11,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Credit',style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 10,),
                              Text('DD/MM/YYYY'),
                              SizedBox(height: 5,),
                              Text('12:15 PM')
                            ],
                          ),
                          Text('+5000',style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold
                          ),)
                          
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: getPadding(
                        left: 10,
                        top: 15,
                        right: 10,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineBluegray1003.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder11,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Withdraw',style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 10,),
                              Text('DD/MM/YYYY'),
                              SizedBox(height: 5,),
                              Text('Booking Accepted   12:15 PM')
                            ],
                          ),
                          Text('-5000',style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold
                          ),)

                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: getPadding(
                        left: 10,
                        top: 15,
                        right: 10,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.outlineBluegray1003.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder11,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Returned',style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 10,),
                              Text('DD/MM/YYYY'),
                              SizedBox(height: 5,),
                              Text('Booking Cancelled  12:15 PM')
                            ],
                          ),
                          Text('+5000',style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold
                          ),)

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: CustomButton(
          width: getHorizontalSize(189),
          text: "Add Lead",
          margin: getMargin(left: 101, right: 100, bottom: 28),
          shape: ButtonShape.RoundedBorder9,
          padding: ButtonPadding.PaddingAll11,
          fontStyle: ButtonFontStyle.InterSemiBold14,
          onTap: () {
            bottomSheet(context);
          },
        ),
      ),
    );
  }

  onTapAddlead(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37396Screen);
  }
}

void bottomSheet(context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: double.maxFinite,
          padding: getPadding(top: 20, bottom: 20),
          decoration: AppDecoration.fillWhiteA700
              .copyWith(borderRadius: BorderRadiusStyle.customBorderTL36),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Text("Add Credit",
                      //     overflow: TextOverflow.ellipsis,
                      //     textAlign: TextAlign.left,
                      //     style: AppStyle.txtPoppinsMedium18),
                      Container(
                          width: getHorizontalSize(275),
                          margin: getMargin(top: 1),
                          child: Text("Add Leads",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18)),
                      Container(
                          width: getHorizontalSize(275),
                          margin: getMargin(top: 4),
                          child: Text("Please enter the leads you want to add.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Black900)),
                      Padding(
                          padding: getPadding(top: 18, right: 95),
                          child: Text("10",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16Lightgreen900)),
                      Padding(
                          padding: getPadding(top: 1),
                          child: SizedBox(
                              width: getHorizontalSize(138),
                              child: Divider(
                                  height: getVerticalSize(2),
                                  thickness: getVerticalSize(2),
                                  color: ColorConstant.blueGray100,
                                  endIndent: getHorizontalSize(75)))),
                      CustomButton(
                          width: getHorizontalSize(201),
                          text: "Submit",
                          margin: getMargin(top: 48, right: 9),
                          shape: ButtonShape.RoundedBorder9,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterSemiBold14,
                          onTap: () {
                            onTapPaymentone(context);
                          })
                    ]),
                CustomImageView(
                    imagePath: ImageConstant.imgPngcliparthum,
                    height: getSize(48),
                    width: getSize(48),
                    radius: BorderRadius.circular(getHorizontalSize(24)),
                    margin: getMargin(top: 1, bottom: 160))
              ]),
        ),
      ]),
    ),
  );
}

class Transaction {
  final String transactionType;

  Transaction({required this.transactionType});
}

// Create a list of transactions
List<Transaction> transactionList = [
  Transaction(transactionType: "Credit"),
  Transaction(transactionType: "withdrawal"),
  Transaction(transactionType: "Return"),
];
onTapPaymentone(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.addMoneyScreen);
}
