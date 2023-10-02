
import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "Language",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(left: 16, top: 10),
                child: Text(
                  'Select your preferred language',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium16,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(358),
                  margin: getMargin(
                    left: 20,
                    top: 6,
                    right: 20,
                    bottom: 5,
                  ),

                  decoration: AppDecoration.outlineBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: null, // Set the currently selected language value
                    onChanged: (String? newValue) {
                      // Handle language selection
                    },
                    items: [
                      DropdownMenuItem<String>(
                        value: '7',
                        child: Text('7'),
                      ),
                      DropdownMenuItem<String>(
                        value: '10',
                        child: Text('10'),
                      ),
                      DropdownMenuItem<String>(
                        value: '12',
                        child: Text('12'),
                      ),
                      DropdownMenuItem<String>(
                        value: '15',
                        child: Text('15'),
                      ),DropdownMenuItem<String>(
                        value: '20',
                        child: Text('20'),
                      ),DropdownMenuItem<String>(
                        value: '25',
                        child: Text('25'),
                      ),DropdownMenuItem<String>(
                        value: '30',
                        child: Text('30'),
                      ),DropdownMenuItem<String>(
                        value: '35',
                        child: Text('35'),
                      ),DropdownMenuItem<String>(
                        value: '40',
                        child: Text('40'),
                      ),DropdownMenuItem<String>(
                        value: '45',
                        child: Text('45'),
                      ),DropdownMenuItem<String>(
                        value: '50',
                        child: Text('50'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
