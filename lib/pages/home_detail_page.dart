import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/Models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {

  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

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
      appBar: AppBar(
        backgroundColor: Colors.transparent, systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: context.theme.canvasColor,
      bottomNavigationBar: Container(
        color: context.theme.cardColor,
        child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.bold.xl4.color(Color.fromARGB(255, 174, 33, 23)).make(),
                    ElevatedButton(
                    
                      onPressed: (){}, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                        shape: MaterialStateProperty.all(StadiumBorder())
                       ),
                      child: "Buy".text.make()
                      ).wh(100, 50)
                  ],
                ).p20(),
      ),
      body: SafeArea(
        
        bottom: false,
        
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
              ).h32(context),

              Expanded(
                
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                  color: context.theme.cardColor,
                  width: context.screenWidth,

                  child: Column(
                    children: [
                     catalog.name.text.lg.color(context.theme.buttonColor).bold.xl4.make(),
                     catalog.desc.text.textStyle(context.captionStyle).xl.make(),

                     "Duo ipsum ipsum sit aliquyam dolores dolore est dolor. Invidunt sed et dolor amet sit eirmod vero no, et ea takimata sed dolor sed stet lorem kasd. Ipsum sed duo lorem invidunt. Gubergren justo sit rebum rebum sadipscing invidunt. Magna no invidunt stet voluptua dolore gubergren labore. Dolores ut et.".text.textStyle(context.captionStyle)
                     .make().p20()
                    ]
                  ).py64(),
                  
                  ),
                )
            )
          ],
        )
      ),
    );
  }
}
