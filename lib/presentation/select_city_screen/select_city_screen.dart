import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/all_city_model.dart';
import 'package:urban_partner/models/create_address_model.dart';
import 'package:urban_partner/models/login_model.dart';
import 'package:urban_partner/presentation/pincoe_screen/pincoe_screen.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';

import '../../repository/auth_repository.dart';

class SelectCityScreen extends StatefulWidget {

  @override
  State<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  List<AllCityModel> cityList = [];
  AllCityModel? selectedCity;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: getVerticalSize(84),
                leadingWidth: 58,
                leading: CustomIconButton(
                    height: 58,
                    width: 58,
                    margin: getMargin(bottom: 26),
                    variant: IconButtonVariant.FillBlue900,
                    child: CustomImageView(
                        svgPath: ImageConstant.imgGroup295WhiteA700)),
                centerTitle: true,
                title: Padding(
                    padding: getPadding(top: 7.11),
                    child: Text("Select Your City",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBlack32.copyWith(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic)))),
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.blue900,
                      ColorConstant.cyan60077
                    ])),
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 58, top: 95, right: 58),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse152,
                                        height: getSize(65),
                                        width: getSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(32)),
                                        onTap: () {
                                          onTapImgEllipse152(context);
                                        }),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse146,
                                        height: getSize(65),
                                        width: getSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(32)),
                                        margin: getMargin(left: 40),
                                        onTap: () {
                                          onTapImgEllipse146(context);
                                        }),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse147,
                                        height: getVerticalSize(65),
                                        width: getHorizontalSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(32)),
                                        margin: getMargin(left: 41),
                                        onTap: () {
                                          onTapImgEllipse147(context);
                                        })
                                  ])),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding:
                                      getPadding(left: 71, top: 6, right: 46),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("Delhi",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMulishRomanBlack15),
                                        Spacer(),
                                        Text("Noida",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMulishRomanBlack15),
                                        Padding(
                                            padding: getPadding(left: 29),
                                            child: Text("Greater Noida",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMulishRomanBlack15))
                                      ]))),
                          Padding(
                              padding: getPadding(left: 56, top: 20, right: 58),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse148,
                                        height: getSize(65),
                                        width: getSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(32)),
                                        onTap: () {
                                          onTapImgEllipse148(context);
                                        }),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse149,
                                        height: getSize(65),
                                        width: getSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(32)),
                                        margin: getMargin(left: 40),
                                        onTap: () {
                                          onTapImgEllipse149(context);
                                        }),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse150,
                                        height: getVerticalSize(65),
                                        width: getHorizontalSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(32)),
                                        margin: getMargin(left: 41),
                                        onTap: () {
                                          onTapImgEllipse150(context);
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(left: 57, top: 6, right: 50),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Gurgaon",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMulishRomanBlack15)),
                                    Padding(
                                        padding:
                                            getPadding(left: 37, bottom: 1),
                                        child: Text("Ghazibad",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMulishRomanBlack15)),
                                    Padding(
                                        padding:
                                            getPadding(left: 31, bottom: 1),
                                        child: Text("Faridabad",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMulishRomanBlack15))
                                  ])),
                          Padding(
                              padding: getPadding(left: 57, top: 20, right: 56),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse145,
                                        height: getSize(65),
                                        width: getSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(33)),
                                        onTap: () {
                                          onTapImgEllipse145(context);
                                        }),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse151,
                                        height: getSize(65),
                                        width: getSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(33)),
                                        margin: getMargin(left: 40),
                                        onTap: () {
                                          onTapImgEllipse151(context);
                                        }),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse154,
                                        height: getSize(65),
                                        width: getSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(33)),
                                        margin: getMargin(left: 40, bottom: 1),
                                        onTap: () {
                                          onTapImgEllipse154(context);
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Mumbai",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanBlack15),
                                    Padding(
                                        padding: getPadding(left: 46),
                                        child: Text("Kolkata",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMulishRomanBlack15)),
                                    Padding(
                                        padding: getPadding(left: 46),
                                        child: Text("Chennai",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMulishRomanBlack15))
                                  ])),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              height: 50,
                              width: 200,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 20),
                                child: cityList == null ? Container(): DropdownButtonFormField<AllCityModel>(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.all(8),
                                    suffixIcon:  Icon(Icons.keyboard_arrow_down,color: Colors.blue.shade900,size: 30,),
                                    hintText: 'Select City',hintStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  value: selectedCity,style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold,fontSize: 20),
                                  iconSize: 0,
                                  elevation: 16,
                                  onChanged: (AllCityModel? newValue) {
                                    setState(() {
                                      selectedCity = newValue;
                                     addCityInAddress();
                                    });
                                  },
                                  items: cityList
                                      .map<DropdownMenuItem<AllCityModel>>((AllCityModel value) {
                                    return DropdownMenuItem<AllCityModel>(
                                      value: value,
                                      child: Text(value.selectcity ?? ''),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: getHorizontalSize(260),
                              margin: getMargin(top: 60),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Your city is not listed?\n",
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize:
                                                getFontSize(11.956521987915039),
                                            fontFamily: 'Mulish',
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w900)),
                                    TextSpan(
                                        text: "We are coming soon!\n",
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize:
                                                getFontSize(19.130434036254883),
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w900)),
                                    TextSpan(
                                        text: "",
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize:
                                                getFontSize(11.956521987915039),
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w900)),
                                    TextSpan(
                                        text: "(",
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize:
                                                getFontSize(19.130434036254883),
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w900)),
                                    TextSpan(
                                        text:
                                            "Our team will get the service provided on your area",
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize:
                                                getFontSize(9.565217018127441),
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w900)),
                                    TextSpan(
                                        text: ").",
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize:
                                                getFontSize(19.130434036254883),
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w900))
                                  ]),
                                  textAlign: TextAlign.center)),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      left: 178,
                                      top: 11,
                                      right: 178,
                                      bottom: 11),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup59),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLocationRedA700,
                                            height: getVerticalSize(37),
                                            width: getHorizontalSize(33),
                                            margin: getMargin(bottom: 109))
                                      ])))
                        ])))));
  }

  onTapImgEllipse152(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pincoeScreen);
  }

  onTapImgEllipse146(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pincoeScreen);
  }

  onTapImgEllipse147(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pincoeScreen);
  }

  onTapImgEllipse148(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pincoeScreen);
  }

  onTapImgEllipse149(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pincoeScreen);
  }

  onTapImgEllipse150(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pincoeScreen);
  }

  onTapImgEllipse145(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pincoeScreen);
  }

  onTapImgEllipse151(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pincoeScreen);
  }

  onTapImgEllipse154(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pincoeScreen);
  }

  @override
  void initState() {
    super.initState();

    requestLocationPermission();
    allCity();
  }

  Future<void> requestLocationPermission() async {
    Map<Permission, PermissionStatus> status = await [
      Permission.locationWhenInUse,
      Permission.locationAlways,
    ].request();

    if (status[Permission.locationWhenInUse]!.isGranted ||
        status[Permission.locationAlways]!.isGranted) {
      // Location permission granted, navigate to the next page
    } else {
      // Location permission denied
      Fluttertoast.showToast(msg: "Location permission denied!");
    }
  }


  void allCity() async {
    final authRepository = AuthRepository();
    List<dynamic> jsonList = await authRepository.allCityApi();

    setState(() {
      cityList = jsonList.map((jsonItem) {
        return AllCityModel.fromJson(jsonItem);
      }).toList();
    });

    print(cityList.length);
  }

  addCityInAddress() async {
    final authRepository = AuthRepository();

    Map<String, String> data = {
      'state': selectedCity!.selectcity ?? '',
    };
    print(data);
    final response = await authRepository.createAddressApi(data);
    CreateAddressModel createAddressModel = CreateAddressModel.fromJson(response);


    if (createAddressModel.data != null){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen('')));
    }
  }
}
