import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

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
      themeMode:ThemeMode.system,
      
      theme: themes.lightTheme(context),
      darkTheme: themes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: myRoutes.Loginpage,
      routes: {
        myRoutes.loginRoute: (context) => Homepage(),
        myRoutes.homeRoute:(context) => Homepage(),
        myRoutes.Loginpage: (context) => LoginPage(),
        myRoutes.cart_page:(context) => cartPage(),
      },

    );
  }
}