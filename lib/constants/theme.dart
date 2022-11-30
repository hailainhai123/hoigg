import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoigg/utils/utils.dart';

const backGroundColor = Color(0xFFF1F3FC);
const kMainColor = Color(0xFF849DF8);
const kSecondaryColor = Color(0xFFF196A7);
const kTextColor = Color(0xFF251A51);
const kLoginBackgroundColor = Color(0xFFEDE6F5);
const kSubTextColor = Color(0xFF75818F);
const kSubmainColor = Color(0xFFF196A7);
const EdgeInsetsGeometry marginBottom = EdgeInsets.only(bottom: 50);
const kSecondTextColor = Color(0xff5365FD);
const primaryBlue = Color(0xFF5365FD);


final headingTextStyle = Get.textTheme.headline5!.copyWith(
  color: kTextColor,
  fontWeight: FontWeight.w700,
);

const baseTitleTextStyle = TextStyle(
  color: Color(0xff0D0140),
  fontWeight: FontWeight.w600,
  fontSize: 16,
);

const baseTextStyle = TextStyle(
  color: Color(0xff0D0140),
  fontWeight: FontWeight.w600,
  fontSize: 14,
);

const buttonTextTheme = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 13,
);

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    backgroundColor: backGroundColor,
    splashFactory: InkSparkle.splashFactory,
    textTheme: GoogleFonts.openSansTextTheme(),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: kSecondaryColor,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        side: const BorderSide(color: kSecondaryColor, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: const TextStyle(
          color: kSecondaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ),
    cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    scaffoldBackgroundColor: backGroundColor,
    colorScheme: lightColorScheme,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    )),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(kMainColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.fromLTRB(26, 16, 26, 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(22),
      ),
    ),
  );
}

const seed = Color(0xFF6750A4);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: kMainColor,
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDBE1FF),
  onPrimaryContainer: Color(0xFF001452),
  secondary: Color(0xFF9A4054),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFD9DF),
  onSecondaryContainer: Color(0xFF3F0013),
  tertiary: Color(0xFF3F59AF),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFDBE1FF),
  onTertiaryContainer: Color(0xFF001452),
  error: Color(0xFFB3261E),
  errorContainer: Color(0xFFF9DEDC),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410E0B),
  background: Color(0xFFFDFBFF),
  onBackground: Color(0xFF1B1B1D),
  surface: Color(0xFFFDFBFF),
  onSurface: Color(0xFF1B1B1D),
  surfaceVariant: Color(0xFFE7E0EC),
  onSurfaceVariant: Color(0xFF49454F),
  outline: Color(0xFF79747E),
  onInverseSurface: Color(0xFFF1F0F4),
  inverseSurface: Color(0xFF2F3033),
  inversePrimary: Color(0xFFB4C4FF),
  shadow: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFB4C4FF),
  onPrimary: Color(0xFF00277E),
  primaryContainer: Color(0xFF244095),
  onPrimaryContainer: Color(0xFFDBE1FF),
  secondary: Color(0xFFFFB2C0),
  onSecondary: Color(0xFF5F1128),
  secondaryContainer: Color(0xFF7D293E),
  onSecondaryContainer: Color(0xFFFFD9DF),
  tertiary: Color(0xFFB4C4FF),
  onTertiary: Color(0xFF00277E),
  tertiaryContainer: Color(0xFF244095),
  onTertiaryContainer: Color(0xFFDBE1FF),
  error: Color(0xFFF2B8B5),
  errorContainer: Color(0xFF8C1D18),
  onError: Color(0xFF601410),
  onErrorContainer: Color(0xFFF9DEDC),
  background: Color(0xFF1B1B1D),
  onBackground: Color(0xFFE3E2E6),
  surface: Color(0xFF1B1B1D),
  onSurface: Color(0xFFE3E2E6),
  surfaceVariant: Color(0xFF49454F),
  onSurfaceVariant: Color(0xFFCAC4D0),
  outline: Color(0xFF938F99),
  onInverseSurface: Color(0xFF1B1B1D),
  inverseSurface: Color(0xFFE3E2E6),
  inversePrimary: Color(0xFF3F59AF),
  shadow: Color(0xFF000000),
);
