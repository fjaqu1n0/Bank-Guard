//Login Screen
// w/ Validation
import 'package:flutter/material.dart';
import 'dashboard.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/BankGuard1.png',),
            SizedBox(width: 5,),
            SizedBox(height: 5,),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40)),
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Color(0xFFF3E5F5),
                filled: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40)),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Color(0xFFF3E5F5),
                filled: true,
                suffixIcon: IconButton(
                  icon:Icon(_obscureText ? Icons.visibility : Icons.visibility_off, color: Colors.black,),
                  onPressed:(){
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  }
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                child: const Text('Login',style: TextStyle(fontSize: 15),),
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Color(0xffffac30)),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)))),
                onPressed: () 
                {
                authentication(usernameController.text, passwordController.text, context);
                },    
              ),
            )
          ],
        ),
      ),
    ));
  }
  void authentication(String username, String password, BuildContext context) {
    if (username == 'admin' && password == 'admin') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const DashBoard()));
    } else {
      SnackBar snackBar = SnackBar(
          content: const Text('Invalid Credentials.'),
          action: SnackBarAction(label: 'Close', onPressed: () {}));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
