import 'package:flutter/material.dart';
import 'package:urban_partner/presentation/home_screen/home_screen.dart';
import 'package:urban_partner/presentation/ongoing_press_screen/ongoing_press_screen.dart';
import 'package:urban_partner/shared/ui_constant.dart';

import '../../core/utils/image_constant.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../profile_screen/profile_screen.dart';
import '../rac_around_screen/rac_around_screen.dart';
import '../shopping_panel_screen/shopping_panel_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    OngoingPressScreen(),
    RacAroundScreen(),
    ShoppingPanelScreen(),
    ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: MyConstant.blue179,
            activeIcon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedIndex == 0
                    ? MyConstant.blue179
                    : MyConstant.black.withOpacity(0.5),
              ),
              child: CustomIconButton(
                  height: 40,
                  width: 40,
                  variant: IconButtonVariant.FillBlue900,
                  padding: IconButtonPadding.PaddingAll8,
                  child: CustomImageView(svgPath: ImageConstant.imgFrame)),
            ),
            icon: const Icon(Icons.home_rounded),
            label: ("New Job"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            activeIcon: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: MyConstant.blue179),
              child: CustomIconButton(
                  height: 40,
                  width: 40,
                  variant: IconButtonVariant.FillBlue900,
                  padding: IconButtonPadding.PaddingAll8,
                  child: CustomImageView(svgPath: ImageConstant.imgRefresh)),
            ),
            icon: CustomIconButton(
                height: 40,
                width: 40,
                variant: IconButtonVariant.FillBlack9007f,
                padding: IconButtonPadding.PaddingAll8,
                child: CustomImageView(svgPath: ImageConstant.imgRefresh)),
            label: ("Ongoing"),
          ),
          BottomNavigationBarItem(
            icon: CustomIconButton(
                height: 40,
                width: 40,
                variant: IconButtonVariant.FillBlack9007f,
                padding: IconButtonPadding.PaddingAll8,
                child: CustomImageView(svgPath: ImageConstant.imgCheckmark)),
            label: ("RAC Around"),
            activeIcon: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: MyConstant.blue179),
              child: const Icon(
                Icons.check,
                color: MyConstant.white255,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: CustomIconButton(
                height: 40,
                width: 40,
                variant: IconButtonVariant.FillBlack9007f,
                padding: IconButtonPadding.PaddingAll8,
                child:
                    CustomImageView(svgPath: ImageConstant.imgFrameWhiteA700)),
            label: ("Shopping"),
            activeIcon: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: MyConstant.blue179),
              child: const Icon(
                Icons.shopping_bag_rounded,
                color: MyConstant.white255,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: CustomIconButton(
                height: 40,
                width: 40,
                variant: IconButtonVariant.FillBlack9007f,
                padding: IconButtonPadding.PaddingAll8,
                child: CustomImageView(
                    svgPath: ImageConstant.imgFrameWhiteA70040x40)),
            label: ("Profile"),
            activeIcon: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: MyConstant.blue179),
              child: const Icon(
                Icons.person_rounded,
                color: MyConstant.white255,
              ),
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        unselectedItemColor: MyConstant.grey,
        selectedItemColor: MyConstant.buttonDarkColor,
        onTap: (index) => setState(() => selectedIndex = index),
        elevation: 10,
      ),
    );
  }
}
