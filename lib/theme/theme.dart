import 'package:flutter/material.dart';

ThemeData darkTheme() {
  const primaryColor = Color(0xffFBCA00);
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
    backgroundColor: primaryColor,
  );
  const inputDecorationTheme = InputDecorationTheme(
    labelStyle: TextStyle(color: textColor),
    hintStyle: TextStyle(color: disabledColor),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(3.5)),
      borderSide: BorderSide(color: disabledColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(3.5)),
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

  final baseTheme = ThemeData.dark();

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
