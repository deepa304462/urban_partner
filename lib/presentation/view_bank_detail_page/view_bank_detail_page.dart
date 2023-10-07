import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

import '../../models/get_profile_model.dart';
import '../../repository/auth_repository.dart';

// ignore_for_file: must_be_immutable
class ViewBankDetailPage extends StatefulWidget {
  @override
  _ViewBankDetailPageState createState() =>
      _ViewBankDetailPageState();
}

class _ViewBankDetailPageState extends State<ViewBankDetailPage>
    with AutomaticKeepAliveClientMixin<ViewBankDetailPage> {
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
                            "Bank Name",
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
                            getProfileModel.data!.bankName.toString(),
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
                            "Branch Name",
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
                            getProfileModel.data!.accountNumber.toString(),
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
                            "Holder Name",
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
                            "Account Number",
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
                            getProfileModel.data!.accountNumber.toString(),
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
                            "IFSC Code",
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
                            getProfileModel.data!.ifscCode.toString(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14,
                          ),
                        ),
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
