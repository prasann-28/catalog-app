import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      canvasColor: creamC,
      accentColor: Colors.deepPurple,
      cardColor: Colors.white,
      buttonTheme: ButtonThemeData(buttonColor: darkBlueC),
      buttonColor: darkBlueC,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryTextTheme: GoogleFonts.poppinsTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ),
      colorScheme:
          ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple).copyWith(
        secondary: darkBlueC,
        primaryContainer: darkBlueC,
        secondaryContainer: Colors.white,
        tertiary: darkBlueC,
      ));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      cardColor: Colors.black,
      buttonTheme: ButtonThemeData(buttonColor: darkBlueC),
      canvasColor: darkcreamC,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryTextTheme: GoogleFonts.poppinsTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ),
      colorScheme:
          ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple).copyWith(
        secondary: Colors.white,
        primaryContainer: darkBlueC,
        secondaryContainer: Colors.black,
        tertiary: Colors.blue,
      ));
  static Color creamC = const Color(0xfff5f5f5);
  static Color darkcreamC = Vx.gray900;
  static Color darkBlueC = const Color(0xff403b58);
  static Color lightBlueC = Vx.indigo500;
}
