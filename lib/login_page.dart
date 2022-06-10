import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/myRoutes.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [Image.asset("lib/assets/images/login_image.png",
        fit: BoxFit.cover,
        
        ),
        Text("Welcome", style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),),

        SizedBox(
          height: 20.0,
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(children: [
           TextFormField(
            decoration: InputDecoration(
              hintText: "Enter UserName",
              labelText: "Username"
            ),
          ),

          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password"
            ),
          ),
          SizedBox(
          height: 40.0,
        ),
        ElevatedButton(onPressed: (){
          print("Button is Working😁✅");
          Navigator.pushNamed(context, myRoutes.homeRoute);
        }, child: Text("Login"),style: TextButton.styleFrom(minimumSize: Size(150,40), textStyle: TextStyle(fontSize: 19)),)
          ],),
        )

        
        ],
        
      ) 
    );
  }
}