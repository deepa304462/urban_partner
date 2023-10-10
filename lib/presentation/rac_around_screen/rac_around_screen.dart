import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_icon_button.dart';
import 'package:urban_partner/widgets/custom_text_form_field.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RacAroundScreen extends StatefulWidget {
  @override
  State<RacAroundScreen> createState() => _RacAroundScreenState();
}

class _RacAroundScreenState extends State<RacAroundScreen> {
  TextEditingController frame37404Controller = TextEditingController();
  late GoogleMapController mapController;
  final LatLng _initialPosition = LatLng(37.7749, -122.4194);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            66,
          ),
          leadingWidth: 58,
          leading: AppbarIconbutton(
            onTap: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
            },
            svgPath: ImageConstant.imgGroup295,
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "RAC Around",
          ),
        ),
        body:GoogleMap(

          initialCameraPosition: CameraPosition(
            target: _initialPosition,
            zoom: 15.0,
          ),
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
          },
        ),
      ),
    );
  }
}
