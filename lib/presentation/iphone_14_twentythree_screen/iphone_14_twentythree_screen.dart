import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';

import '../iphone_14_twentythree_screen/widgets/listtype1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_image.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class Iphone14TwentythreeScreen extends StatefulWidget {
  @override
  State<Iphone14TwentythreeScreen> createState() => _Iphone14TwentythreeScreenState();
}

class _Iphone14TwentythreeScreenState extends State<Iphone14TwentythreeScreen> {
  var _razorpay = Razorpay();
  @override
  void initState() {
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose(){
    super.dispose();
    _razorpay.clear(); //
  }

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
            _showRacBottomSheet(context,"Add Leads","Submit","Please enter a lead you want to \nadd...","Leeds");
          },
        ),
      ),
    );
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
