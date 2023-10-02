import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/add_product_page/add_product_page.dart';
import 'package:urban_partner/presentation/documents_page/documents_page.dart';
import 'package:urban_partner/presentation/edit_profile_page/edit_profile_page.dart';
import 'package:urban_partner/presentation/edit_profile_three_page/edit_profile_three_page.dart';
import 'package:urban_partner/presentation/edit_profile_two_page/edit_profile_two_page.dart';
import 'package:urban_partner/presentation/product_bank_detials_page/product_bank_detials_page.dart';
import 'package:urban_partner/widgets/app_bar/appbar_circleimage.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

class EditAddProductScreen extends StatefulWidget {
  @override
  _EditAddProductScreenState createState() =>
      _EditAddProductScreenState();

  onTapGroup296(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}

// ignore_for_file: must_be_immutable
class _EditAddProductScreenState
    extends State<EditAddProductScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AppbarIconbutton(
                            svgPath: ImageConstant.imgGroup295,
                            onTap: () {
                              // onTapGroup302(context);
                            },
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          AppbarSubtitle(text: "Add Product"),
                        ],
                      ),
                      Divider(
                        height: getVerticalSize(2),
                        thickness: getVerticalSize(2),
                        color: ColorConstant.blueGray100,
                      ),
                      Container(
                          height: getVerticalSize(30),
                          child: TabBar(
                              controller: tabviewController,
                              labelColor: ColorConstant.blue900,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600),
                              unselectedLabelColor: ColorConstant.gray900,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400),
                              indicatorColor: ColorConstant.blue900,
                              tabs: [
                                Tab(
                                    child: Text("Company Details",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Bank Details",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Documents",
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      Container(
                          height: getVerticalSize(1017),
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                AddProductPage(),
                                ProductBankDetialsPage(),
                                DocumentsPage()
                              ]))
                    ]))));
  }

  onTapGroup296(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
