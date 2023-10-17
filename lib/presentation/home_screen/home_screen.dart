import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:urban_partner/common/common.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/get_profile_model.dart';
import 'package:urban_partner/models/new_order_model.dart';

import '../../core/utils/utils.dart';
import '../../repository/auth_repository.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetProfileModel? getProfileModel;
  NewOrderModel newOrderModel = NewOrderModel();
  var _razorpay = Razorpay();

  @override
  void initState() {
    getProfileData();
    getNewOrder();
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstant.whiteA700,
        // appBar: AppBar(
        //   toolbarHeight: 30,
        //   backgroundColor: Color(0xffFAA708),
        // ),
        body: getProfileModel == null
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 100,
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 80,
                                width: 80,
                                child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: Image.network(
                                      getProfileModel!.data!.uploadSelfie
                                          .toString(),
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    )),
                              )),

                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  getProfileModel!.data!.fullName.toString(),
                                  style: TextStyle(fontFamily: "Inter"),
                                ),
                                Text(
                                  getProfileModel!.data!.address.toString(),
                                  style: TextStyle(fontFamily: "Inter"),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 20,
                                    ),
                                    Text(
                                      "Rating",
                                      style: TextStyle(fontFamily: "Inter"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),

                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Lead Wallet",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Inter"),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "RAC Wallet",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Inter"),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                        ),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xff145F51))),
                                    onPressed: () {
                                      _showRacBottomSheet(context,"Add Leads","Submit","Please enter a lead you want to \nadd...","Leeds");
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                            getProfileModel!.data!.lead
                                                .toString(),
                                            style: TextStyle(
                                                fontFamily: "Inter")),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("Leads",
                                            style: TextStyle(
                                                fontFamily: "Inter"))
                                      ],
                                    )),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                        ),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xff482FFF))),
                                    onPressed: () {
                                      _showRacBottomSheet(context,"Add Amount","Add Money","Please enter a amount you want to \nadd...","Amount");
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.currency_rupee),
                                        Text(
                                            getProfileModel!.data!.wallet
                                                .toString(),
                                            style: TextStyle(
                                                fontFamily: "Inter"))
                                      ],
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xff63FFB1)),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("Total Earned:",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  Row(
                                    children: [
                                      Text("Rs.",
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      Text("10000",
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/Group 37697.png"),
                            Text("Gold",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_active,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.orangeAccent,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(newOrderModel.count.toString(),
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 5,
                            ),
                            Text("New Jobs",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "Missed Jobs",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    color: Color(0xff0B37A3),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                    newOrderModel == null
                        ? CircularProgressIndicator()
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: newOrderModel.data!.length,
                            itemBuilder: (context, index) {
                              final order = newOrderModel.data![index];
                              return ListTile(
                                  title: Card(
                                      elevation: 4,
                                      color: Colors.grey.shade200,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      shadowColor: Colors.black,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Service",
                                                  style: TextStyle(
                                                      fontFamily: "Inter"),
                                                ),
                                                Text(
                                                  'Time Slot',
                                                  style: TextStyle(
                                                      fontFamily: "Inter"),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  order.serviceId!.name
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Inter"),
                                                ),
                                                Text(
                                                  order.address!.timeSlot
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Inter"),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 40),
                                                  child: Text(
                                                    "Price",
                                                    style: TextStyle(
                                                        fontFamily: "Inter"),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 140,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .location_on_rounded,
                                                      color: Colors
                                                          .green.shade900,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(order
                                                            .address!.street2
                                                            .toString()),
                                                        Text(order
                                                            .address!.city
                                                            .toString()),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Text(
                                              order.servicePrice.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Inter"),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors
                                                                    .redAccent)),
                                                    onPressed: () {},
                                                    child: Text(
                                                      "         Reject        ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: "Inter",
                                                          color:
                                                              Colors.white),
                                                    )),
                                                Container(
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
                                                    "Accept",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      // Change text color to make it visible on the gradient background
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Inter",
                                                    ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )));
                            }),
                  ],
                ),
              ),
      ),
    );
  }

  onTapReject(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  onTapAccept(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }

  onTapRacRound(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
    Navigator.pushNamed(context, AppRoutes.racAroundScreen);
  }

  onTapTxtMissedjob(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.missedJobsScreen);
  }

  onTapColumnrefresh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ongoingPressScreen);
  }

  onTapColumnframetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  getProfileData() async {
    final authRepository = AuthRepository();
    final response = await authRepository.getProfileApi();
    getProfileModel = GetProfileModel.fromJson(response);

    if (getProfileModel!.status == 200) {
      Utils.toastMassage(getProfileModel!.message.toString());
    } else {
      Utils.toastMassage(response['message']);
      Utils.logOut(context);
    }
    print(response);
    setState(() {});
    Common.currentUser = getProfileModel!.data!;
    print("response");
    print(response);
    print("response");
    setState(() {});
  }
  getNewOrder() async {
    final authRepository = AuthRepository();
    final response = await authRepository.getNewOrdersApi();
    debugPrint(response.toString());

    setState(() {
      newOrderModel = NewOrderModel.fromJson(response);
    });
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
