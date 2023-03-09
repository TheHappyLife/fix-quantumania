// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primary1;
  late Color neutrals8;
  late Color neutrals4;
  late Color gray4;
  late Color neutrals2;
  late Color success;
  late Color neutrals3;
  late Color neutrals6;
  late Color error;
  late Color neutrals7;
  late Color neutrals1;
  late Color neutrals5;
  late Color warning1;
  late Color border1;
  late Color warning2;
  late Color error1;
  late Color backgroundPrimary;
  late Color lightTextPrimary;
  late Color aliasGrayscaleLabel;
  late Color aliasGrayscaleLine;
  late Color aliasGrayscaleBackgroundWeak;
  late Color aliasGrayscaleBody;
  late Color aliasGrayscaleHeaderWeak;
  late Color aliasGrayscaleHeader;
  late Color aliasGrayscaleInput;
  late Color aliasGrayscaleBackground;
  late Color aliasGrayscalePlaceholder;
  late Color primaryBtnText;
  late Color lineColor;
  late Color btnText;
  late Color customColor3;
  late Color customColor4;
  late Color white;
  late Color background;
  late Color backgroundComponents;
  late Color overlay;
  late Color primary600;
  late Color secondary600;
  late Color tertiary600;
  late Color darkBGstatic;
  late Color secondary30;
  late Color overlay0;
  late Color primary30;
  late Color customColor1;
  late Color grayIcon;
  late Color gray200;
  late Color gray600;
  late Color black600;
  late Color tertiary400;
  late Color textColor;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFFFDC537);
  late Color secondaryColor = const Color(0xFF4BC9F0);
  late Color tertiaryColor = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryBackground = const Color(0xFF23262F);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);

  late Color primary1 = Color(0xFFFDC537);
  late Color neutrals8 = Color(0xFFFCFCFD);
  late Color neutrals4 = Color(0xFF777E91);
  late Color gray4 = Color(0xFF4A4754);
  late Color neutrals2 = Color(0xFF23262F);
  late Color success = Color(0xFF66C56D);
  late Color neutrals3 = Color(0xFF353945);
  late Color neutrals6 = Color(0xFFE6E8EC);
  late Color error = Color(0xFFFF4949);
  late Color neutrals7 = Color(0xFFF4F5F6);
  late Color neutrals1 = Color(0xFF141416);
  late Color neutrals5 = Color(0xFFB1B5C4);
  late Color warning1 = Color(0xFFFFB780);
  late Color border1 = Color(0x3DFFFFFF);
  late Color warning2 = Color(0xFFF1ED86);
  late Color error1 = Color(0xFFFA9494);
  late Color backgroundPrimary = Color(0x1F00FFFF);
  late Color lightTextPrimary = Color(0xDE3A3541);
  late Color aliasGrayscaleLabel = Color(0xFF6E7191);
  late Color aliasGrayscaleLine = Color(0xFFD9DBE9);
  late Color aliasGrayscaleBackgroundWeak = Color(0xFFF7F7FC);
  late Color aliasGrayscaleBody = Color(0xFF4E4B66);
  late Color aliasGrayscaleHeaderWeak = Color(0xFF262338);
  late Color aliasGrayscaleHeader = Color(0xFF14142B);
  late Color aliasGrayscaleInput = Color(0xFFEFF0F7);
  late Color aliasGrayscaleBackground = Color(0xFFFCFCFC);
  late Color aliasGrayscalePlaceholder = Color(0xFFA0A3BD);
  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color btnText = Color(0xFFFFFFFF);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
  late Color background = Color(0xFF1D2429);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color overlay = Color(0xB3FFFFFF);
  late Color primary600 = Color(0xFF336A4A);
  late Color secondary600 = Color(0xFF6D604A);
  late Color tertiary600 = Color(0xFF0C2533);
  late Color darkBGstatic = Color(0xFF0D1E23);
  late Color secondary30 = Color(0x4D928163);
  late Color overlay0 = Color(0x00FFFFFF);
  late Color primary30 = Color(0x4D4B986C);
  late Color customColor1 = Color(0xFF2FB73C);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color gray600 = Color(0xFF262D34);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color textColor = Color(0xFF1E2429);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Josefin Sans';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get title2Family => 'Josefin Sans';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get title3Family => 'Josefin Sans';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Josefin Sans';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get subtitle2Family => 'Josefin Sans';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Josefin Sans';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Josefin Sans';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 12.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Josefin Sans';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get title2Family => 'Josefin Sans';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get title3Family => 'Josefin Sans';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Josefin Sans';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get subtitle2Family => 'Josefin Sans';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Josefin Sans';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Josefin Sans';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Josefin Sans';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get title2Family => 'Josefin Sans';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get title3Family => 'Josefin Sans';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Josefin Sans';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get subtitle2Family => 'Josefin Sans';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Josefin Sans';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Josefin Sans';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Josefin Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
