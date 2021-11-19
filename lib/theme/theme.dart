import 'package:flutter/material.dart';

ThemeData lightTheme() {
  const primaryColor = Color(0xff62C4FB);
  const secondaryColor = Color(0xff2F2F2F);
  const backgroundColor = Color(0xff171717);
  const disabledColor = Color(0xffACACAC);
  const textColor = Colors.white;
  const defaultTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );
  final textTheme = const TextTheme()
      .apply(
        bodyColor: textColor,
        displayColor: textColor,
        fontFamily: 'Roboto',
      )
      .copyWith(
        headline1: defaultTextStyle.copyWith(fontSize: 64),
        headline2: defaultTextStyle.copyWith(fontSize: 34),
        bodyText1: defaultTextStyle.copyWith(fontSize: 18),
        bodyText2: defaultTextStyle.copyWith(fontSize: 16),
      );
  const primaryIconTheme = IconThemeData(
    color: textColor,
  );
  const appBarTheme = AppBarTheme(
    backgroundColor: primaryColor,
    elevation: 0,
  );
  const inputBorderRadius = BorderRadius.all(Radius.circular(5));
  const inputDecorationTheme = InputDecorationTheme(
    labelStyle: TextStyle(color: textColor, fontWeight: FontWeight.bold),
    hintStyle: TextStyle(color: disabledColor),
    enabledBorder: OutlineInputBorder(
      borderRadius: inputBorderRadius,
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: inputBorderRadius,
      borderSide: BorderSide(color: Colors.white),
    ),
    focusColor: Colors.white,
    hoverColor: Colors.white,
    fillColor: Colors.white,
  );
  const iconTheme = IconThemeData(color: Colors.white);
  final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      primary: Colors.white,
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(primary: primaryColor),
  );
  final outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      primary: primaryColor,
      minimumSize: const Size.fromHeight(54),
      backgroundColor: Colors.white,
      elevation: 0,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  final baseTheme = ThemeData.light();

  return baseTheme.copyWith(
    primaryColor: primaryColor,
    backgroundColor: backgroundColor,
    disabledColor: disabledColor,
    textTheme: textTheme,
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: appBarTheme,
    primaryIconTheme: primaryIconTheme,
    bottomAppBarColor: secondaryColor,
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    iconTheme: iconTheme,
    textButtonTheme: textButtonTheme,
    outlinedButtonTheme: outlinedButtonTheme,
  );
}
