import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class themes{

  static ThemeData lightTheme(BuildContext context)=> ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        
        appBarTheme: AppBarTheme(
           color: Colors.white,
           centerTitle: true,
           elevation: 0.0,
           iconTheme: IconThemeData(color: Colors.black),
           titleTextStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold, fontFamily: GoogleFonts.lato().fontFamily),
        )
      );

      static ThemeData DarkTheme(BuildContext context)=> ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          centerTitle: true,
        )
        
        

      );

      //colors

      static Color creamColor= Color(0xfff5f5f5);
      static Color darkBluishColor= Color(0xff403b58);
}