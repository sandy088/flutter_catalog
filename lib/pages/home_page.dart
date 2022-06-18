import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/Models/catalog.dart';
import 'package:flutter_catalog/utils/myRoutes.dart';
import 'package:flutter_catalog/widgets/homepage_widgets/catalog_header.dart';
import 'package:flutter_catalog/widgets/homepage_widgets/catalog_list.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override

  
  void initState(){
    super.initState();
    loadData();
  }

  loadData() async {
    
    final catalogJson= await rootBundle.loadString("lib/assets/files/catalog.json");
    final decodedData= jsonDecode(catalogJson);
    var productData= decodedData["products"];
    
    CatalogModel.items= List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });
  }



  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     systemNavigationBarColor: Colors.transparent));
    //     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    //Dummy List
    // final dummyList= List.generate(20,(index) => CatalogModel.items[0]);

    

    return Scaffold(
      
      backgroundColor: themes.creamColor,
      floatingActionButton: FloatingActionButton(onPressed: () => Navigator.pushNamed(context, myRoutes.cart_page) ,backgroundColor: themes.darkBluishColor,
      child: Icon(CupertinoIcons.cart)
      ),

        body: SafeArea(
          bottom: false,
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if(CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                 CatalogList().expand()
                
                else
                Center(child: CircularProgressIndicator(),)
              ],
            ),
          ),
        )
    );
  }
}





