import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../rac_wallet_screen/widgets/rac_wallet_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class RacWalletScreen extends StatefulWidget {
  @override
  State<RacWalletScreen> createState() => _RacWalletScreenState();
}

class _RacWalletScreenState extends State<RacWalletScreen> {
  var _razorpay = Razorpay();

  @override
  void initState() {
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(58),
            leadingWidth: 58,
            leading: AppbarIconbutton(
                svgPath: ImageConstant.imgGroup295,
                onTap: () {
                  onTapProfile(context);
                }),
            centerTitle: true,
            title: AppbarSubtitle1(text: "RAC Wallet")),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(top: 8, bottom: 8),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Divider(
                  height: getVerticalSize(2),
                  thickness: getVerticalSize(2),
                  color: ColorConstant.blueGray100),
              Container(
                  margin: getMargin(left: 16, top: 22, right: 16),
                  padding:
                      getPadding(left: 110, top: 38, right: 110, bottom: 38),
                  decoration: AppDecoration.fillTeal800.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder11),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("WALLET BALANCE",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold16),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant
                                          .imgIcbaselinecurrencyrupee,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Text("0",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsMedium16WhiteA700)
                                ]))
                      ])),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 16, top: 44),
                      child: Text("Payment Details",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold16))),
              Container(
                child: Container(
                  margin: getMargin(right: 15, left: 15, top: 15),
                  padding: getPadding(
                    left: 10,
                    top: 17,
                    right: 10,
                    bottom: 17,
                  ),
                  decoration: AppDecoration.outlineBluegray1003.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 8,
                              ),
                              child: Text(
                                "Withdrew",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold14,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "-5000",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold16Red900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 13,
                          top: 4,
                          bottom: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "DD/MM/YYYY",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular14,
                            ),
                            Text(
                              "12 : 15 PM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                      padding: getPadding(left: 16, top: 12, right: 16),
                      child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(12));
                          },
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return RacWalletItemWidget();
                          })))
            ])),
        bottomNavigationBar: CustomButton(
          width: getHorizontalSize(201),
          text: "Add Money",
          margin: getMargin(left: 95, right: 94, bottom: 28),
          shape: ButtonShape.RoundedBorder9,
          padding: ButtonPadding.PaddingAll11,
          fontStyle: ButtonFontStyle.InterSemiBold14,
          onTap: () {
            _showRacBottomSheet(context,"Add Amount","Add Money","Please enter a amount you want to \nadd...","Amount");
          },
        ),
      ),
    );
  }

  //
  onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
  void _showRacBottomSheet(BuildContext context,String title, String buttonText, String description,String lableText) {
    showModalBottomSheet(
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 12,right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontFamily: "Inter", fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      Image.asset('assets/images/img_pngcliparthum.png',height: 50,width: 50,)
                    ],
                  ),
                  Text(description,
                      style: TextStyle(fontFamily: "Inter", fontSize: 16)),
                  Center(
                    child: SizedBox(
                      width: 120,
                      child:
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.currency_rupee,color: Colors.green.shade900,),
                          labelText: lableText,
                          labelStyle: TextStyle(
                              fontFamily: "Inter", fontSize: 16,color: Colors.green.shade900,fontWeight: FontWeight.bold),
                        ),

                      ),


                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      var options = {
                        'key': 'rzp_test_35fzmQiPzfuB15',
                        'amount': 1*100,
                        'name': 'Urban Clap',
                        'description': 'Service',
                        'timeout':60,
                      };
                      _razorpay.open(options);
                    },
                    child: Center(
                      child: Container(
                        height: 35,
                        width: 130,
                        decoration: BoxDecoration(
                            gradient:
                            LinearGradient(
                              colors: [
                                Color(0xFF094DB3),
                                // Blue color at 100%
                                Color(0xFF09B3B3),
                                // Teal color at 47%
                              ],
                              stops: [-2.0, 0.5],
                              begin:
                              FractionalOffset
                                  .topCenter,
                              end: FractionalOffset
                                  .bottomCenter,
                            ),
                            borderRadius:
                            BorderRadius
                                .circular(5)),
                        child: Center(
                            child: Text(
                              buttonText,
                              style: TextStyle(
                                color: Colors.white,
                                // Change text color to make it visible on the gradient background
                                fontWeight:
                                FontWeight.bold,
                                fontFamily: "Inter",
                              ),
                            )),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),);
      },
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
  }

  @override
  void dispose(){
    super.dispose();
    _razorpay.clear(); //
  }
}





onTapAddmoney(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.addMoneyScreen);
}
