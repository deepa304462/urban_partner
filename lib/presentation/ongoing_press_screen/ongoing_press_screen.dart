import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/models/on_going_service_model.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

import '../../repository/auth_repository.dart';
import '../../widgets/custom_button.dart';

class OngoingPressScreen extends StatefulWidget {
  @override
  State<OngoingPressScreen> createState() => _OngoingPressScreenState();
}

class _OngoingPressScreenState extends State<OngoingPressScreen> {
  OnGoingServiceModel onGoingServiceModel = OnGoingServiceModel();
  List<Data> onGoingJobList = [];

  @override
  void initState() {
    onGoingJob();
    super.initState();
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
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
          title: Center(child: AppbarSubtitle1(text: "Ongoing Jobs")),
        ),
        body:ListView.builder(
            itemCount: onGoingJobList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Card(
                  elevation: 20,
                  color: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  shadowColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Service",style: TextStyle(
                                fontFamily: "Inter"
                            ),),
                            Text('Time Slot',style: TextStyle(
                                fontFamily: "Inter"
                            ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(onGoingJobList[0].serviceId!.name.toString(),style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Inter"
                            ),),
                            Text(onGoingJobList[0].address!.timeSlot.toString(),style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Inter"
                            ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text("Price",style: TextStyle(
                                  fontFamily: "Inter"
                              ),),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.location_on_rounded,
                                  color: Colors.green.shade900,),
                                Text("${onGoingJobList[0].address!.city.toString()} , ${onGoingJobList[0].address!.state.toString()} "),
                              ],
                            ),

                          ],
                        ),

                        Text(onGoingJobList[0].servicePrice.toString(),style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Inter"
                        ),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 35,
                              width: 130,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(
                                          0xFF094DB3), // Blue color at 100%
                                      Color(
                                          0xFF09B3B3), // Teal color at 47%
                                    ],
                                    stops: [-2.0, 0.5],
                                    begin: FractionalOffset.topCenter,
                                    end:
                                    FractionalOffset.bottomCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child:
                              Center(child: Text("Go To", style: TextStyle(
                                color: Colors.white, // Change text color to make it visible on the gradient background
                                fontWeight: FontWeight.bold,
                                fontFamily: "Inter",
                              ),)),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Colors.redAccent
                                )
                              ),
                                onPressed: () {},
                                child: Text("         Cancel        ",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Inter",
                                  color: Colors.white
                                ),))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  onTapGoto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37557Screen);
  }

  onTapColumnframetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapGotoone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsPageScreen);
  }

  // onTapRaCScreen(BuildContext context) {
  onTapCancelone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37557Screen);
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapEllipse423(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  onTapEllipse420(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  onTapEllipse421(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  onTapEllipse422(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  onTapEllipse424(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  onGoingJob() async {
    final authRepository = AuthRepository();
    final response = await authRepository.onGoingService();
    debugPrint(response.toString());
    OnGoingServiceModel onGoingServiceModel =
        OnGoingServiceModel.fromJson(response);
    setState(() {
      onGoingJobList = onGoingServiceModel.data!;
      print(onGoingJobList.length);
    });
  }
}
