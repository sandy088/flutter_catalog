import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';
import 'package:flutter_catalog/login_page.dart';
import 'package:flutter_catalog/utils/myRoutes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days= 1;

    return MaterialApp(
      // home: Homepage(),
      themeMode:ThemeMode.light,
      
      theme: themes.lightTheme(context),
      darkTheme: themes.DarkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        myRoutes.loginRoute: (context) => Homepage(),
        myRoutes.homeRoute:(context) => Homepage(),
        myRoutes.Loginpage: (context) => LoginPage(),
      },

    );
  }
}