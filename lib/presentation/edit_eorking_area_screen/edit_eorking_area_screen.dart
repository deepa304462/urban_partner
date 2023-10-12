import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/core/utils/utils.dart';
import 'package:urban_partner/models/get_service_area_model.dart';
import 'package:urban_partner/models/get_service_distance_model.dart'
    as service;
import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';
import 'package:urban_partner/repository/auth_repository.dart';
import 'package:urban_partner/widgets/app_bar/appbar_image.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class EditEorkingAreaScreen extends StatefulWidget {
  @override
  State<EditEorkingAreaScreen> createState() => _EditEorkingAreaScreenState();
}

class _EditEorkingAreaScreenState extends State<EditEorkingAreaScreen> {
  List<service.Msg> serviceDistanceList = [];
  List<Msg> serviceAreaList = [];
  Msg? selectArea;
  service.Msg? selectDistance;
  bool _isLoading = false;

  @override
  void initState() {
    serviceArea();
    serviceDistance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            61,
          ),
          leadingWidth: 65,
          leading: Container(
            margin: getMargin(
              top: 2,
              bottom: 3,
            ),
            padding: getPadding(
              left: 14,
              top: 22,
              right: 14,
              bottom: 22,
            ),
            decoration: AppDecoration.fillWhiteA700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarImage(
                  height: getVerticalSize(
                    9,
                  ),
                  width: getHorizontalSize(
                    25,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  svgPath: ImageConstant.imgGroup295,
                  margin: getMargin(
                    left: 1,
                    top: 3,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "Edit Working Area",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 12,
            bottom: 12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                height: getVerticalSize(
                  2,
                ),
                thickness: getVerticalSize(
                  2,
                ),
                color: ColorConstant.blueGray100,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 35,
                    top: 22,
                  ),
                  child: Text(
                    "Add Serviceable Area",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold13,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 21,
                  right: 18,
                ),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackShape: RoundedRectSliderTrackShape(),
                    activeTrackColor: ColorConstant.amber600,
                    inactiveTrackColor: ColorConstant.blueGray100,
                    thumbColor: ColorConstant.blue900,
                    thumbShape: RoundSliderThumbShape(),
                  ),
                  child: Slider(
                    value: 21.41,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 13,
                  top: 6,
                  right: 19,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "0",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12,
                    ),
                    Spacer(
                      flex: 19,
                    ),
                    Text(
                      "5 km",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12,
                    ),
                    Spacer(
                      flex: 80,
                    ),
                    Text(
                      "50 km",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 29,
                  ),
                  child: Text(
                    "Edit your service area:",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(8)),
                    child: DropdownButtonFormField<Msg>(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(8),
                        suffixIcon: CustomImageView(
                            svgPath: ImageConstant.imgVectorBlack9005x10,
                            height: getVerticalSize(30),
                            width: getHorizontalSize(10),
                            margin: getMargin(
                                top: 6, bottom: 6, left: 30, right: 16)),
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
                          .map<DropdownMenuItem<Msg>>((Msg value) {
                        return DropdownMenuItem<Msg>(
                          value: value,
                          child: Text(value.name.toString() ?? ''),
                        );
                      }).toList(),
                    )),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 20,
                  ),
                  child: Text(
                    "Serviceable Distance (in km)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(8)),
                    child: DropdownButtonFormField<service.Msg>(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(8),
                        suffixIcon: CustomImageView(
                            svgPath: ImageConstant.imgVectorBlack9005x10,
                            height: getVerticalSize(30),
                            width: getHorizontalSize(10),
                            margin: getMargin(
                                top: 6, bottom: 6, left: 30, right: 16)),
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
                          child: Text(value.value.toString() ?? ''),
                        );
                      }).toList(),
                    )),
              ),
              Spacer(),
              _isLoading ?CircularProgressIndicator():CustomButton(
                onTap: () {
                  editServiceArea();
                  editServiceDistance();
                },
                width: getHorizontalSize(
                  195,
                ),
                text: "Update",
                margin: getMargin(
                  bottom: 61,
                ),
                shape: ButtonShape.RoundedBorder26,
                padding: ButtonPadding.PaddingAll11,
                fontStyle: ButtonFontStyle.InterSemiBold24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  editServiceArea() async {
    setState(() {
      _isLoading = true;
    });
    Map<String, String> data = {'name': selectArea!.name!};
    final authRepository = AuthRepository();
    final response =
        await authRepository.editWorkingArea(data, selectArea!.id.toString());
    print("object");
    print(response.body);
    print("object");

    if (response.statusCode == 200){
      Utils.toastMassage("Area updated Successfully");
      setState(() {
        _isLoading = false;
      });

    }else {
      Utils.toastMassage("Area not Successfully");
      setState(() {
        _isLoading = false;
      });

    }
  }
  editServiceDistance() async {
    setState(() {
      _isLoading = true;
    });
    Map<String, String> data = {'value': selectDistance!.value!,'type': 'km'!};
    final authRepository = AuthRepository();
    final response =
    await authRepository.editServiceDistanceArea(data, selectDistance!.id.toString());
    print(selectDistance!.id);
    print("object");
    print(response.body);
    print("object");
    if (response.statusCode == 200){
      Utils.toastMassage("Area updated Successfully");
      setState(() {
        _isLoading = false;
      });
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ProfileScreen()));
    }else {
      Utils.toastMassage("Area not Successfully");
      setState(() {
        _isLoading = false;
      });

    }
  }

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
}
