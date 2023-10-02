import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/add_product_page/add_product_page.dart';
import 'package:urban_partner/presentation/documents_two_page/documents_two_page.dart';
import 'package:urban_partner/presentation/product_bank_detials_page/product_bank_detials_page.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';

class DocumentsTabContainerScreen extends StatefulWidget {
  @override
  _DocumentsTabContainerScreenState createState() =>
      _DocumentsTabContainerScreenState();
  onTapGroup308(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingPanelScreen);
  }
}

// ignore_for_file: must_be_immutable
class _DocumentsTabContainerScreenState
    extends State<DocumentsTabContainerScreen> with TickerProviderStateMixin {
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
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgGroup295,
                    onTap: () {
                      onTapGroup308(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "Add Product")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 8),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.blueGray100),
                          Container(
                              height: getVerticalSize(27),
                              width: getHorizontalSize(358),
                              margin: getMargin(top: 21),
                              child: TabBar(
                                  controller: tabviewController,
                                  labelColor: ColorConstant.blue900,
                                  labelStyle: TextStyle(
                                      fontSize: getFontSize(16),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700),
                                  unselectedLabelColor: ColorConstant.gray900,
                                  unselectedLabelStyle: TextStyle(
                                      fontSize: getFontSize(16),
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
                              height: getVerticalSize(1021),
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    AddProductPage(),
                                    ProductBankDetialsPage(),
                                    DocumentsTwoPage()
                                  ]))
                        ])))));
  }

  onTapGroup308(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingPanelScreen);
  }
}
