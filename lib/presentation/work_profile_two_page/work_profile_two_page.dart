import 'dart:io';

import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/get_all_services_model.dart' as allService;
import 'package:urban_partner/models/get_service_area_model.dart';
import 'package:urban_partner/models/get_service_distance_model.dart'
    as service;
import 'package:urban_partner/widgets/custom_button.dart';

import '../../models/update_and_upload_model.dart';
import '../../repository/auth_repository.dart';

class WorkProfileTwoPage extends StatefulWidget {
  @override
  _WorkProfileTwoPageState createState() => _WorkProfileTwoPageState();

  onTapGridicons(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37352Screen);
  }

  onTapGridicons1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37354Screen);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workProfileTabContainerScreen);
  }
}

class _WorkProfileTwoPageState extends State<WorkProfileTwoPage>
    with AutomaticKeepAliveClientMixin<WorkProfileTwoPage> {
  List<Msg> serviceAreaList = [];
  List<service.Msg> serviceDistanceList = [];
  List<allService.Msg> allServicesList = [];
  Msg? selectArea;
  service.Msg? selectDistance;
  allService.Msg? selectService;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    serviceArea();
    serviceDistance();
    allServices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Container(
              height: MediaQuery.of(context).size.height,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Expanded(
                    child: Padding(
                        padding: getPadding(left: 16, top: 14, right: 16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Choose your service area:",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  )),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: DropdownButtonFormField<Msg>(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: const EdgeInsets.all(8),
                                      suffixIcon: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgVectorBlack9005x10,
                                          height: getVerticalSize(30),
                                          width: getHorizontalSize(10),
                                          margin: getMargin(
                                              top: 6,
                                              bottom: 6,
                                              left: 30,
                                              right: 16)),
                                      hintText: 'Select Area',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: selectArea,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inter',
                                        fontSize: 14),
                                    iconSize: 0,
                                    elevation: 16,
                                    onChanged: (Msg? newValue) {
                                      setState(() {
                                        selectArea = newValue;
                                        // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                                      });
                                    },
                                    items: serviceAreaList
                                        .map<DropdownMenuItem<Msg>>(
                                            (Msg value) {
                                      return DropdownMenuItem<Msg>(
                                        value: value,
                                        child:
                                            Text(value.name.toString() ?? ''),
                                      );
                                    }).toList(),
                                  )),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("Serviceable Distance (in km)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium14.copyWith(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ))),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: DropdownButtonFormField<service.Msg>(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: const EdgeInsets.all(8),
                                      suffixIcon: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgVectorBlack9005x10,
                                          height: getVerticalSize(30),
                                          width: getHorizontalSize(10),
                                          margin: getMargin(
                                              top: 6,
                                              bottom: 6,
                                              left: 30,
                                              right: 16)),
                                      hintText: 'Select Distance',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: selectDistance,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inter',
                                        fontSize: 14),
                                    iconSize: 0,
                                    elevation: 16,
                                    onChanged: (service.Msg? newValue) {
                                      setState(() {
                                        selectDistance = newValue;
                                        // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                                      });
                                    },
                                    items: serviceDistanceList
                                        .map<DropdownMenuItem<service.Msg>>(
                                            (service.Msg value) {
                                      return DropdownMenuItem<service.Msg>(
                                        value: value,
                                        child:
                                            Text(value.value.toString() ?? ''),
                                      );
                                    }).toList(),
                                  )),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("Add your service",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium14.copyWith(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ))),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(8)),
                                  child:
                                      DropdownButtonFormField<allService.Msg>(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: const EdgeInsets.all(8),
                                      suffixIcon: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgVectorBlack9005x10,
                                          height: getVerticalSize(30),
                                          width: getHorizontalSize(10),
                                          margin: getMargin(
                                              top: 6,
                                              bottom: 6,
                                              left: 30,
                                              right: 16)),
                                      hintText: 'Select Service',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    value: selectService,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inter',
                                        fontSize: 14),
                                    iconSize: 0,
                                    elevation: 16,
                                    onChanged: (allService.Msg? newValue) {
                                      setState(() {
                                        selectService = newValue;
                                        debugPrint(selectService?.id);
                                        // Navigator.push(context, MaterialPageRoute(builder: (_)=>PincodeScreen()));
                                      });
                                    },
                                    items: allServicesList
                                        .map<DropdownMenuItem<allService.Msg>>(
                                            (allService.Msg value) {
                                      return DropdownMenuItem<allService.Msg>(
                                        value: value,
                                        child:
                                            Text(value.name.toString() ?? ''),
                                      );
                                    }).toList(),
                                  )),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 4,
                              ),
                              CustomButton(
                                  width: getHorizontalSize(195),
                                  text: "Save",
                                  shape: ButtonShape.RoundedBorder26,
                                  padding: ButtonPadding.PaddingAll11,
                                  fontStyle: ButtonFontStyle.InterSemiBold24,
                                  onTap: () {
                                    uploadAndUpdateDocument();
                                  },
                                  alignment: Alignment.center)
                            ]))),
              ]),
            ))));
  }

  // onTapGridicons(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame37352Screen);
  // }

  // onTapGridicons1(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.frame37354Screen);
  // }

  // onTapSave(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.workProfilePage);
  // }

  void serviceArea() async {
    final authRepository = AuthRepository();
    final response = await authRepository.serviceAreaApi();

    GetServiceAreaModel getServiceAreaModel =
        GetServiceAreaModel.fromJson(response);
    setState(() {
      serviceAreaList = getServiceAreaModel.msg!;
      print(serviceAreaList.length);
    });
  }

  void serviceDistance() async {
    final authRepository = AuthRepository();
    final response = await authRepository.serviceDistanceAreaApi();

    service.GetServiceDistanceModel getServiceDistanceModel =
        service.GetServiceDistanceModel.fromJson(response);

    setState(() {
      serviceDistanceList = getServiceDistanceModel.msg!;
      print(serviceDistanceList.length);
    });
  }

  void allServices() async {
    final authRepository = AuthRepository();
    final response = await authRepository.allServiceApi();
    debugPrint(response.toString());
    allService.GetAllServicesModel getAllServicesModel =
        allService.GetAllServicesModel.fromJson(response);
    setState(() {
      allServicesList = getAllServicesModel.msg!;
      print(allServicesList.length);
    });
  }

  void uploadAndUpdateDocument() async {
    final authRepository = AuthRepository();
    var data = {
      'serviceArea': selectArea,
      'serviceDistance': selectDistance,
      'serviceName':selectService,
    };
    File? pic, panCard, adharFront, adharBack;
    final response = await authRepository.updateAndUploadDocument(
      data,
      pic,
      panCard,
      adharFront,
      adharBack,
    );
    debugPrint(response.toString());
    UpdateAndUploadModel updateAndUploadModel =
        UpdateAndUploadModel.fromJson(response);
    setState(() {
      // updateAndUploadModel.msg!;
    });
  }
}
