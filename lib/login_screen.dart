//Login Screen
// w/ Validation
import 'package:flutter/material.dart';
import 'dashboard.dart';


class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/DashBoard' : (context)=> const DashScreen(),
      }
      
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name="";
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
       body: Container(
         padding: const EdgeInsets.only(left: 40, right: 40),
         child: Form(
            key: formKey, //key for form
             child:Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                  SizedBox(height:height*0.05),
                  Text('Sign In',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height:height*0.05,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value)
                    {
                      if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value))
                      {
                        return "Incorrect username";
                      } else
                      {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height:height*0.05,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value)
                    {
                      if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value))
                      {
                        return "Incorrect password";
                      } else
                      {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height:height*0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          if(formKey.currentState!.validate())
                          {
                            final snackBar = SnackBar(content: Text('Welcome'));
                            _scaffoldKey.currentState!.showSnackBar(snackBar);
                          }
                        },
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                        minimumSize: Size(110, 50),
                        textStyle: TextStyle(fontSize: 20),
                        primary: Color(0xffffac30),
                        onPrimary: Colors.white,)
                      ),
                      ],
                  )
                ],
             )
         )
       )
    );
  }
  void openDashBoard()
  {
    Navigator.pushNamed(context, '/DashBoard');
  }
}
