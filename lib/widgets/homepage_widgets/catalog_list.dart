import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/widgets/themes.dart';

import '../../Models/catalog.dart';
import 'catalog_Image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index){
        final catalog= CatalogModel.getByPosition(index);
        // ignore: missing_required_param
        return InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(catalog: catalog,
          ),
          ),
         ),
          child: CatalogItem(catalog: catalog));
      }
      );
    
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero (
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalog.name.text.lg.color(context.theme.buttonColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              

              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  "\$${catalog.price}".text.bold.make(),
                  ElevatedButton(
                  
                    onPressed: (){}, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                      shape: MaterialStateProperty.all(StadiumBorder())
                     ),
                    child: "Buy".text.make()
                    )
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      )
    ).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}