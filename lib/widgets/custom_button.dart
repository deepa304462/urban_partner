import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: width ?? double.maxFinite,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? getVerticalSize(40),
        ),
        padding: _setPadding(),
        backgroundColor: _setColor(),
        side: _setTextButtonBorder(),
        shadowColor: _setTextButtonShadowColor(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT10:
        return getPadding(
          left: 10,
          top: 10,
          bottom: 10,
        );
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingT5:
        return getPadding(
          top: 5,
          right: 5,
          bottom: 5,
        );
      case ButtonPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case ButtonPadding.PaddingT9:
        return getPadding(
          top: 9,
          right: 9,
          bottom: 9,
        );
      case ButtonPadding.PaddingT16:
        return getPadding(
          left: 16,
          top: 16,
          bottom: 16,
        );
      case ButtonPadding.PaddingAll23:
        return getPadding(
          all: 23,
        );
      case ButtonPadding.PaddingT2:
        return getPadding(
          top: 2,
          bottom: 2,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillDeeppurpleA200:
        return ColorConstant.deepPurpleA200;
      case ButtonVariant.FillTeal800:
        return ColorConstant.teal800;
      case ButtonVariant.FillRed600:
        return ColorConstant.red600;
      case ButtonVariant.FillBlue900:
        return ColorConstant.blue900;
      case ButtonVariant.FillLightgreen900:
        return ColorConstant.lightGreen900;
      case ButtonVariant.FillAmber600:
        return ColorConstant.amber600;
      case ButtonVariant.OutlineWhiteA700:
        return ColorConstant.lightGreen90001;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlack9007f:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlack9007f_1:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlue900:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillAmber200:
        return ColorConstant.amber200;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.gray200;
      case ButtonVariant.FillRed900:
        return ColorConstant.red900;
      case ButtonVariant.Bvbv:
      case ButtonVariant.OutlineBlack90026:
      case ButtonVariant.OutlineBlue900_1:
      case ButtonVariant.Outline:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack9007f:
        return BorderSide(
          color: ColorConstant.black9007f,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack9007f_1:
        return BorderSide(
          color: ColorConstant.black9007f,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlue900:
        return BorderSide(
          color: ColorConstant.blue900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlue900_1:
        return BorderSide(
          color: ColorConstant.blue900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.Bvbv:
      case ButtonVariant.FillDeeppurpleA200:
      case ButtonVariant.FillTeal800:
      case ButtonVariant.FillRed600:
      case ButtonVariant.FillBlue900:
      case ButtonVariant.FillLightgreen900:
      case ButtonVariant.FillAmber600:
      case ButtonVariant.OutlineBlack90026:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillAmber200:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillRed900:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90026:
        return ColorConstant.black90026;
      case ButtonVariant.OutlineBlue900:
        return ColorConstant.black90033;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.black9003f;
      case ButtonVariant.Bvbv:
      case ButtonVariant.FillDeeppurpleA200:
      case ButtonVariant.FillTeal800:
      case ButtonVariant.FillRed600:
      case ButtonVariant.FillBlue900:
      case ButtonVariant.FillLightgreen900:
      case ButtonVariant.FillAmber600:
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineBlack9007f:
      case ButtonVariant.OutlineBlack9007f_1:
      case ButtonVariant.FillAmber200:
      case ButtonVariant.OutlineBlue900_1:
      case ButtonVariant.Outline:
      case ButtonVariant.FillRed900:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder26:
        return BorderRadius.circular(
          getHorizontalSize(
            26.00,
          ),
        );
      case ButtonShape.CircleBorder13:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
      case ButtonShape.RoundedBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      case ButtonShape.RoundedBorder17:
        return BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        );
      case ButtonShape.RoundedBorder9:
        return BorderRadius.circular(
          getHorizontalSize(
            9.00,
          ),
        );
      case ButtonShape.CircleBorder22:
        return BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        );
      case ButtonShape.CustomBorderLR15:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              15.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              15.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterSemiBold24:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.RobotoRomanBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterBold16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterMedium16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MuliBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsRegular12:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterBlack20:
        return TextStyle(
          color: ColorConstant.blue900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w900,
        );
      case ButtonFontStyle.MulishItalicExtraBlack24:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w900,
        );
      case ButtonFontStyle.MulishRomanExtraBold16:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.InterBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsBold1823:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18.23,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsBold1823Blue900:
        return TextStyle(
          color: ColorConstant.blue900,
          fontSize: getFontSize(
            18.23,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoRomanBold12Blue900:
        return TextStyle(
          color: ColorConstant.blue900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterSemiBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.RobotoRegular1668:
        return TextStyle(
          color: ColorConstant.gray80002,
          fontSize: getFontSize(
            16.68,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRomanMedium1668:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16.68,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InriaSansBold16:
        return TextStyle(
          color: ColorConstant.blue900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inria Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsMedium16:
        return TextStyle(
          color: ColorConstant.blue900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MulishRomanMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterBold14YellowA20001:
        return TextStyle(
          color: ColorConstant.yellowA20001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack9007f:
        return Border.all(
          color: ColorConstant.black9007f,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack9007f_1:
        return Border.all(
          color: ColorConstant.black9007f,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlue900:
        return Border.all(
          color: ColorConstant.blue900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlue900_1:
        return Border.all(
          color: ColorConstant.blue900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.Bvbv:
      case ButtonVariant.FillDeeppurpleA200:
      case ButtonVariant.FillTeal800:
      case ButtonVariant.FillRed600:
      case ButtonVariant.FillBlue900:
      case ButtonVariant.FillLightgreen900:
      case ButtonVariant.FillAmber600:
      case ButtonVariant.OutlineBlack90026:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillAmber200:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillRed900:
        return null;
      default:
        return null;
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90026:
        return true;
      case ButtonVariant.FillDeeppurpleA200:
      case ButtonVariant.FillTeal800:
      case ButtonVariant.FillRed600:
      case ButtonVariant.FillBlue900:
      case ButtonVariant.FillLightgreen900:
      case ButtonVariant.FillAmber600:
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineBlack9007f:
      case ButtonVariant.OutlineBlack9007f_1:
      case ButtonVariant.OutlineBlue900:
      case ButtonVariant.FillAmber200:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.OutlineBlue900_1:
      case ButtonVariant.Outline:
      case ButtonVariant.FillRed900:
        return false;
      default:
        return true;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90026:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.blue900,
            ColorConstant.teal50077,
          ],
        );
      case ButtonVariant.FillDeeppurpleA200:
      case ButtonVariant.FillTeal800:
      case ButtonVariant.FillRed600:
      case ButtonVariant.FillBlue900:
      case ButtonVariant.FillLightgreen900:
      case ButtonVariant.FillAmber600:
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineBlack9007f:
      case ButtonVariant.OutlineBlack9007f_1:
      case ButtonVariant.OutlineBlue900:
      case ButtonVariant.FillAmber200:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.OutlineBlue900_1:
      case ButtonVariant.Outline:
      case ButtonVariant.FillRed900:
        return null;
      default:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.blue900,
            ColorConstant.cyan60077,
          ],
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90026:
        return [
          BoxShadow(
            color: ColorConstant.black90026,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ];
      case ButtonVariant.OutlineBlue900:
        return [
          BoxShadow(
            color: ColorConstant.black90033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              3.65,
            ),
          ),
        ];
      case ButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ];
      case ButtonVariant.Bvbv:
      case ButtonVariant.FillDeeppurpleA200:
      case ButtonVariant.FillTeal800:
      case ButtonVariant.FillRed600:
      case ButtonVariant.FillBlue900:
      case ButtonVariant.FillLightgreen900:
      case ButtonVariant.FillAmber600:
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineBlack9007f:
      case ButtonVariant.OutlineBlack9007f_1:
      case ButtonVariant.FillAmber200:
      case ButtonVariant.OutlineBlue900_1:
      case ButtonVariant.Outline:
      case ButtonVariant.FillRed900:
        return null;
      default:
        return null;
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder4,
  RoundedBorder26,
  CircleBorder13,
  RoundedBorder29,
  RoundedBorder17,
  RoundedBorder9,
  CircleBorder22,
  CustomBorderLR15,
}
enum ButtonPadding {
  PaddingAll5,
  PaddingT10,
  PaddingAll11,
  PaddingT5,
  PaddingAll19,
  PaddingAll15,
  PaddingAll8,
  PaddingT9,
  PaddingT16,
  PaddingAll23,
  PaddingT2,
}
enum ButtonVariant {
  Bvbv,
  FillDeeppurpleA200,
  FillTeal800,
  FillRed600,
  FillBlue900,
  FillLightgreen900,
  FillAmber600,
  OutlineWhiteA700,
  OutlineBlack90026,
  FillWhiteA700,
  OutlineBlack9007f,
  OutlineBlack9007f_1,
  OutlineBlue900,
  FillAmber200,
  OutlineBlack9003f,
  OutlineBlue900_1,
  Outline,
  FillRed900,
}
enum ButtonFontStyle {
  InterBold16,
  InterSemiBold24,
  InterSemiBold20,
  RobotoRomanBold12,
  InterMedium14,
  InterBold16Black900,
  InterMedium16,
  MuliBold14,
  PoppinsBold14,
  PoppinsRegular12,
  InterBlack20,
  MulishItalicExtraBlack24,
  MulishRomanExtraBold16,
  InterBold14,
  PoppinsBold1823,
  PoppinsBold1823Blue900,
  RobotoRomanBold12Blue900,
  RobotoRomanBold12White900,
  InterSemiBold14,
  RobotoRegular1668,
  RobotoRomanMedium1668,
  InterMedium18,
  InriaSansBold16,
  PoppinsMedium16,
  PoppinsMedium16WhiteA700,
  MulishRomanMedium14,
  InterBold14YellowA20001,
}
