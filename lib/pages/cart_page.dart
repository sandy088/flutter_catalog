import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/cart.dart';
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
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent, systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: "Cart".text.color(context.theme.accentColor).bold.make(),
        centerTitle: true,
      ),

      body: Column(children: [
        _CartList().p32().expand(),
        Divider(),
        _CartTotal(),


      ],),
    );
  }
}

class _CartTotal extends StatelessWidget {

  
  const _CartTotal({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final _cart= CartModel();

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        "\$${_cart.totalPrice}".text.xl5.color(context.theme.accentColor).make(),
        30.widthBox,
        ElevatedButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not Supported Yet".text.make()));
        }, 
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)) ,

        child: "Buy".text.make()).w32(context)
      ],)
    );
    
  }
}

class _CartList extends StatelessWidget{
  final _cart= CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(onPressed: (){}, 
           icon: Icon(Icons.remove_circle_outline),
          ),
        title: _cart.items[index].name.text.make(),
      ), );
  }
}