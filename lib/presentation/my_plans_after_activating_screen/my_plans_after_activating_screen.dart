import 'package:urban_partner/presentation/profile_screen/profile_screen.dart';

import '../../models/get_all_subscription_plan.dart';
import '../../repository/auth_repository.dart';
import '../my_plans_after_activating_screen/widgets/listsilverplan_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

class MyPlansAfterActivatingScreen extends StatefulWidget {
  @override
  State<MyPlansAfterActivatingScreen> createState() => _MyPlansAfterActivatingScreenState();
}

class _MyPlansAfterActivatingScreenState extends State<MyPlansAfterActivatingScreen> {
  List<Msg> allSubscriptionList = [];

  @override
  void initState() {
   getAllSubscriptionPlans();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                    },
                    svgPath: ImageConstant.imgGroup295),
                centerTitle: true,
                title: AppbarSubtitle1(text: "My Plan")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 8, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(2),
                          thickness: getVerticalSize(2),
                          color: ColorConstant.blueGray100),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 29, top: 22, right: 26),
                              child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(38));
                                  },
                                  itemCount: allSubscriptionList.length,
                                  itemBuilder: (context, index) {
                                    return ListsilverplanItemWidget(
                                        allSubscriptionList[index],
                                        onTapStacksilverplan: () {
                                      onTapStacksilverplan(context);
                                    });
                                  })))
                    ]))));
  }

  onTapStacksilverplan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.afterActivatingScreen);
  }

  void getAllSubscriptionPlans() async {
    final authRepository = AuthRepository();
    final response = await authRepository.getAllSubscriptionPlan();
    debugPrint(response.toString());
    GetAllSubscriptionPlan getALlSubscriptionPlans = GetAllSubscriptionPlan.fromJson(response);
    setState(() {
      allSubscriptionList = getALlSubscriptionPlans.msg!;
      print(getALlSubscriptionPlans.msg);
    });
  }
}
