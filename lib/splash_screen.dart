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
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xfff5f5f5)),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/BankGuard1.png', height: 240,),
            SizedBox(height: 5,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 9),
              child: ElevatedButton(
                onPressed: openLoginScreen,
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(210, 50),
                  textStyle: TextStyle(fontSize: 20),
                  primary: Color(0xffffac30),
                  onPrimary: Colors.black,
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