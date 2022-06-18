import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartPage extends StatelessWidget {
  const cartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      SystemChrome.setSystemUIOverlayStyle(
   SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark, 
      //set brightness for icons, like dark background light icons
   )
);

    return Scaffold(
      backgroundColor: themes.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent, systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: "Cart".text.bold.make(),
      ),
    );
  }
}