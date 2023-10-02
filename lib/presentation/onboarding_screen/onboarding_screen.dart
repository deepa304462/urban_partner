import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urban_partner/core/utils/app_constant.dart';
import 'package:urban_partner/core/utils/color_constant.dart';
import 'package:urban_partner/core/utils/image_constant.dart';
import 'package:urban_partner/core/utils/size_utils.dart';
import 'package:urban_partner/presentation/sign_up_page/sign_up.dart';
import 'package:urban_partner/shared/ui_constant.dart';
import 'package:urban_partner/shared/ui_navigation.dart';
import 'package:urban_partner/widgets/custom_image_view.dart';


class OnBoardingPage extends StatefulWidget {

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _controller = PageController();
  @override
  void initState() {
    super.initState();
    _animateSlider();
  }

  String success = '';
  void _animateSlider() async {
    Future.delayed(const Duration(seconds: 2)).then((_) {
      int nextPage = _controller.page!.round() + 1;

      if (success == "success") {
        log("success");
      } else {
        if (nextPage == AppConstant.sliderDataList.length) {
          NavByMe.push(context,   SignUpScreen());
          success = "success";
        } else {
          log("next");
        }
      }
      _controller
          .animateToPage(
        nextPage,
        duration: const Duration(seconds: 3),
        curve: Curves.fastOutSlowIn,
      )
          .then((_) {
        _animateSlider();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  int currtpage = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyConstant.white255,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 550,
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: AppConstant.sliderDataList.length,
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      currtpage = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "${AppConstant.sliderDataList[index]['image']}",
                          height: 340,
                        ),
                        const SizedBox(height: 20),

                        Text(
                          "${AppConstant.sliderDataList[index]['name']}",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 32,
                            fontStyle: FontStyle.italic,
                            // fontFamily: MyConstant.textStyleInter,
                            fontWeight: FontWeight.bold,
                            color: MyConstant.black,
                          ),
                        ),
                        // Container(
                        //   width: getHorizontalSize(
                        //     338,
                        //   ),
                        //   margin: getMargin(
                        //     left: 10,
                        //     top: 3,
                        //     right: 11,
                        //   ),
                        //   child: RichText(
                        //     text: TextSpan(
                        //       children: [
                        //         TextSpan(
                        //           text: "RAC Repair",
                        //           style: TextStyle(
                        //             color: ColorConstant.blue900,
                        //             fontSize: getFontSize(
                        //               32,
                        //             ),
                        //             fontFamily: 'Inter',
                        //             fontWeight: FontWeight.w900,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // ),
                      ],
                    );
                  },
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        AppConstant.sliderDataList.length,
                            (index) => Indicator(
                          isActive: currtpage == index ? true : false,
                        ),
                      ),
                    ),

                    // const SizedBox(height: 130),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Image(image: AssetImage('assets/images/Frame 37350.png'),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: _bottomNavigation(),
      ),
    );
  }

  _bottomNavigation() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              AppConstant.sliderDataList.length,
                  (index) => Indicator(
                isActive: currtpage == index ? true : false,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SvgPicture.asset("assets/images/rac_repair_.svg"),
          ),
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  const Indicator(
      {
        this.isActive = false,
        this.duration = const Duration(microseconds: 200)});
  final bool isActive;
  final Duration duration;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 10,
      width: isActive ? 50 : 10,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isActive ? MyConstant.blue179 : MyConstant.white224,
        border: Border.all(
          color: isActive ? MyConstant.blue179 : MyConstant.white224,
        ),
      ),
      duration: duration,
    );
  }
}






