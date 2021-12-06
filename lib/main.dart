// ignore: file_names
// this file serves as main.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'authentication.dart';
import 'package:sdev_app/providers/balance.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Splash());
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MultiProvider(
        providers: [ChangeNotifierProvider.value(value: AmountProvider())],
        child: Sizer(builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Mobile Banking App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen(title: 'Mobile Banking App'),
          );
        }));
  }
}

class SplashScreen extends StatefulWidget {
   const SplashScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
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

