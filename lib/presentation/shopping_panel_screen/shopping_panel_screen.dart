import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/presentation/add_product_page/add_product_page.dart';
import 'package:urban_partner/presentation/add_product_page/edit_add_product.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/presentation/rac_shop_near_me_screen/rac_shop_near_me_screen.dart';
import 'package:urban_partner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:urban_partner/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:urban_partner/widgets/app_bar/custom_app_bar.dart';
import 'package:urban_partner/widgets/custom_button.dart';

class ShoppingPanelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            66,
          ),
          leadingWidth: 58,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.imgGroup295,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
            },
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "RAC Shopping",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 8,
            bottom: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                height: getVerticalSize(
                  2,
                ),
                thickness: getVerticalSize(
                  2,
                ),
                color: ColorConstant.blueGray100,
              ),
              Container(
                margin: getMargin(
                  left: 20,
                  top: 16,
                  right: 19,
                ),
                padding: getPadding(
                  left: 54,
                  top: 19,
                  right: 54,
                  bottom: 19,
                ),
                decoration: AppDecoration.outlineBlack9003f2.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        onTapRacNereMe(
                            context);
                      },
                      child: Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "RAC Repair shop near me",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium18,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgGroup37550,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>EditAddProductScreen()));
                },
                child: Container(
                  margin: getMargin(
                    left: 32,
                    top: 16,
                    right: 32,
                  ),

                  decoration: AppDecoration.outlineBlack9003f2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: CustomButton(
                    height: getVerticalSize(
                      60,
                    ),
                    text: "Add my product",

                    variant: ButtonVariant.OutlineBlack9003f,
                    shape: ButtonShape.CircleBorder13,
                    padding: ButtonPadding.PaddingAll19,
                    fontStyle: ButtonFontStyle.InterMedium18,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  onTapRacNereMe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.racShopNearMeScreen);
  }
  onTapAddProduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addProductPage);
  }
  onTapGroup298(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  }
}
