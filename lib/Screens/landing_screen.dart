import 'package:flutter/material.dart';
import 'package:mobile_banking/Customs/border_icon.dart';
import 'package:mobile_banking/Utility/constants.dart';

class LandingScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Row(
                children:[
                  BorderIcon(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.menu,color: COLOR_BLACK,),
                    ),
                ]
              )
            ],
          ),
        ),
      ),
    ); 
  }
}