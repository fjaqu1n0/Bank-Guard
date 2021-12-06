import 'package:flutter/material.dart';
import 'dart:io';
import 'login_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 9),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)
                    {
                      return LoginScreen();
                    },
                  )
                  );
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(210, 50),
                  textStyle: TextStyle(fontSize: 20),
                  primary: Color(0xffffac30),
                  onPrimary: Colors.black,
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 9),
              child: ElevatedButton(
                onPressed: (){
                  const snackBar = SnackBar(
                   content: Text(
                   "Function disabled for demo purposes"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Exit'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(210, 50),
                  textStyle: TextStyle(fontSize: 20),
                  primary: Color(0xffffac30),
                  onPrimary: Colors.black,
                ),
              )
            )
          ],
        ))
      
    );
  }
}
