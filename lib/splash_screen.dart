// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(Splash());
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xff3df2c8)),
      home: SplashScreen(),
      routes: {
        '/LoginScreen' : (context)=>LoginScreen(),
      }
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> AuthScreen()));
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green[600],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Mognetize.png', height: 120,),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
      );
  }
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({ Key? key }) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green[600],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 9),
              child: ElevatedButton.icon(
                onPressed: (){},
                label: Text('Login by Pin'),
                icon: Icon(Icons.pin_sharp),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(210, 50),
                  textStyle: TextStyle(fontSize: 20),
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 9),
              child: ElevatedButton.icon(
                onPressed: (){},
                label: Text('Login by Number'),
                icon: Icon(Icons.phone_android_rounded),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(210, 50),
                  textStyle: TextStyle(fontSize: 20),
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 9),
              child: ElevatedButton(
                onPressed: openLoginScreen,
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(210, 50),
                  textStyle: TextStyle(fontSize: 20),
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
              )
            )

          ],
        )
      )
      );
    
  }

  void openLoginScreen()
  {
    Navigator.pushNamed(context, '/LoginScreen');
  }
}