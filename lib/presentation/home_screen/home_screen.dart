import 'package:flutter/material.dart';
import 'package:urban_partner/common/common.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/get_profile_model.dart';
import 'package:urban_partner/models/new_order_model.dart';
import 'package:urban_partner/presentation/ongoing_press_screen/ongoing_press_screen.dart';
import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/presentation/rac_around_screen/rac_around_screen.dart';
import 'package:urban_partner/presentation/shopping_panel_screen/shopping_panel_screen.dart';

import '../../core/utils/utils.dart';
import '../../repository/auth_repository.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetProfileModel? getProfileModel;
  NewOrderModel newOrderModel = NewOrderModel();
  int _currentIndex = 0;

  @override
  void initState() {
    getProfileData();
    getNewOrder();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        // appBar: AppBar(
        //   toolbarHeight: 30,
        //   backgroundColor: Color(0xffFAA708),
        // ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: getProfileModel == null
              ? Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
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
                                      onPressed: () {},
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
                                      onPressed: () {},
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
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue.shade900,
            selectedLabelStyle: TextStyle(
              fontFamily: 'inter',
            ),
            currentIndex: _currentIndex,
            onTap: _onTabTapped,
            items: [
              BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: CustomImageView(svgPath: ImageConstant.imgFrame),
                ),
                icon: CircleAvatar(
                  backgroundColor: Colors.grey.shade600,
                  child: CustomImageView(svgPath: ImageConstant.imgFrame),
                ),
                label: 'New Job',
              ),
              BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: CustomImageView(svgPath: ImageConstant.imgRefresh),
                ),
                icon: CircleAvatar(
                  backgroundColor: Colors.grey.shade600,
                  child: CustomImageView(svgPath: ImageConstant.imgRefresh),
                ),
                label: 'Ongoing',
              ),
              BottomNavigationBarItem(
                  activeIcon: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: CustomImageView(svgPath: ImageConstant.imgCheckmark),
                  ),
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey.shade600,
                    child: CustomImageView(svgPath: ImageConstant.imgCheckmark),
                  ),
                  label: 'RAC Around'),
              BottomNavigationBarItem(
                  activeIcon: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: CustomImageView(
                        svgPath: ImageConstant.imgFrameWhiteA700),
                  ),
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey.shade600,
                    child: CustomImageView(
                        svgPath: ImageConstant.imgFrameWhiteA700),
                  ),
                  label: 'Shopping'),
              BottomNavigationBarItem(
                  activeIcon: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: CustomImageView(
                        svgPath: ImageConstant.imgFrameWhiteA70040x40),
                  ),
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey.shade600,
                    child: CustomImageView(
                        svgPath: ImageConstant.imgFrameWhiteA70040x40),
                  ),
                  label: 'Profile')
            ]),
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
    Common.currentUser = getProfileModel!.data!;
    print("response");
    print(response);
    print("response");
    await Utils.saveToSharedPreference(
        Constants.name, getProfileModel!.data!.fullName);
    await Utils.saveToSharedPreference(
        Constants.email, getProfileModel!.data!.email);
    await Utils.saveToSharedPreference(
        Constants.mobile, getProfileModel!.data!.phone);
    await Utils.saveToSharedPreference(
        Constants.profilePhoto, getProfileModel!.data!.phone);
    setState(() {});
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => HomeScreen()));
      } else if (_currentIndex == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => OngoingPressScreen()));
      } else if (_currentIndex == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => RacAroundScreen()));
      } else if (_currentIndex == 3) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => ShoppingPanelScreen()));
      } else if (_currentIndex == 4) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => ProfileScreen()));
      }
    });
  }

  getNewOrder() async {
    final authRepository = AuthRepository();
    final response = await authRepository.getNewOrdersApi();
    debugPrint(response.toString());

    setState(() {
      newOrderModel = NewOrderModel.fromJson(response);
    });
  }
}
