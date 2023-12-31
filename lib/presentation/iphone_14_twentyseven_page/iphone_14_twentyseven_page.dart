import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

import '../../models/get_profile_model.dart';
import '../../repository/auth_repository.dart';

// ignore_for_file: must_be_immutable
class Iphone14TwentysevenPage extends StatefulWidget {
  @override
  _Iphone14TwentysevenPageState createState() =>
      _Iphone14TwentysevenPageState();
}

class _Iphone14TwentysevenPageState extends State<Iphone14TwentysevenPage>
    with AutomaticKeepAliveClientMixin<Iphone14TwentysevenPage> {
  GetProfileModel getProfileModel = GetProfileModel();

  @override
  void initState() {
    getProfileData();
    super.initState();
  }
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child:getProfileModel.data == null ?Center(child: CircularProgressIndicator()):Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 16,
                      right: 255,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 1,
                          ),
                          child: Text(
                            "Name",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium13Black900,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 11,
                          ),
                          child: Text(
                            getProfileModel.data!.fullName.toString(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 32,
                          ),
                          child: Text(
                            "Mobile Number",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium13Black900,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child: Text(
                            getProfileModel.data!.phone.toString(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                          ),
                          child: Text(
                            "Email ID",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium13Black900,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 11,
                          ),
                          child: Text(
                            getProfileModel.data!.email.toString(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14,
                          ),
                        ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 32,
                        //   ),
                        //   child: Text(
                        //     "Father Name",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterMedium13Black900,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 11,
                        //   ),
                        //   child: Text(
                        //     "Loren Epsom",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterBold14,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 32,
                        //   ),
                        //   child: Text(
                        //     "Date of Birth",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterMedium13Black900,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 10,
                        //   ),
                        //   child: Text(
                        //     "DD/MM/YYYY",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterBold14,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 33,
                        //   ),
                        //   child: Text(
                        //     "Qualification",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterMedium13Black900,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 11,
                        //   ),
                        //   child: Text(
                        //     "Loren Epsom",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterBold14,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 32,
                        //   ),
                        //   child: Text(
                        //     "Marital Status",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterMedium13Black900,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 11,
                        //   ),
                        //   child: Text(
                        //     "Loren Epsom",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterBold14,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 32,
                        //   ),
                        //   child: Text(
                        //     "Local Address",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterMedium13Black900,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 11,
                        //   ),
                        //   child: Text(
                        //     "Loren Epsom",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterBold14,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 32,
                        //   ),
                        //   child: Text(
                        //     "Permanent Address",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterMedium13Black900,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     top: 11,
                        //   ),
                        //   child: Text(
                        //     "Loren Epsom",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.left,
                        //     style: AppStyle.txtInterBold14,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getProfileData() async {
    final authRepository = AuthRepository();
    final response  = await authRepository.getProfileApi();
    getProfileModel = GetProfileModel.fromJson(response);
    setState(() {

    });
  }
}
