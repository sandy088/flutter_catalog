import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

import 'package:flutter_catalog/utils/myRoutes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


void main() {
  runApp(VxState(
    store: MyStore(),
    child: MyApp()));
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
      initialRoute: myRoutes.homeRoute,
      routes: {
        myRoutes.loginRoute: (context) => Homepage(),
        myRoutes.homeRoute:(context) => Homepage(),
        myRoutes.Loginpage: (context) => LoginPage(),
        myRoutes.cart_page:(context) => cartPage(),
      },

    );
  }
}