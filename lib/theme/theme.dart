import 'package:flutter/material.dart';

ThemeData lightTheme() {
  const primaryColor = Color(0xff54BAF3);
  const secondaryColor = Color(0xff2F2F2F);
  const backgroundColor = Color(0xff171717);
  const disabledColor = Color(0xffACACAC);
  const textColor = Colors.white;
  final textTheme = const TextTheme().apply(
    bodyColor: textColor,
    displayColor: textColor,
    fontFamily: 'Roboto',
  );
  const primaryIconTheme = IconThemeData(
    color: textColor,
  );
  const appBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
  );
  const inputBorderRadius = BorderRadius.all(Radius.circular(5));
  const inputDecorationTheme = InputDecorationTheme(
    labelStyle: TextStyle(color: textColor),
    hintStyle: TextStyle(color: disabledColor),
    enabledBorder: OutlineInputBorder(
      borderRadius: inputBorderRadius,
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: inputBorderRadius,
      borderSide: BorderSide(color: primaryColor),
    ),
    focusColor: primaryColor,
    hoverColor: primaryColor,
    fillColor: primaryColor,
  );
  const iconTheme = IconThemeData(color: Colors.white);
  const accentIconTheme = IconThemeData(color: Color(0xff979797));
  final textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.resolveWith(
        (states) => primaryColor.withOpacity(0.2),
      ),
    ),
  );
  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(primary: primaryColor),
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
    accentIconTheme: accentIconTheme,
    iconTheme: iconTheme,
    textButtonTheme: textButtonTheme,
  );
}
