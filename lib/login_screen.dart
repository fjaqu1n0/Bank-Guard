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
  TextEditingController _textController = TextEditingController();
  TextEditingController _textpassController = TextEditingController();
  
  List<String> userCredentials = [
    'admin',
  ];
  List<String> passCredentials = [
    'admin',
  ];
  
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
                  Image.asset('assets/images/BankGuard1.png', height: 180,),
                  SizedBox(height:height*0.05,),
                  TextFormField(
                      controller: _textController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(40)),
                         hintText: 'Username',
                        hintStyle: TextStyle(color: Colors.black),
                      labelText: "Username",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  SizedBox(height:height*0.05,),
                  TextFormField(
                     controller: _textpassController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(40))
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: "Password",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  SizedBox(height:height*0.05, width: 200,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                         if (!userCredentials.contains(_textController.text.toLowerCase()) ||(!passCredentials.contains(_textpassController.text.toLowerCase()))) 
                          {
                            setState(() 
                            {
                              final snackBar = SnackBar(
                                  content: Text('Incorrect Username/Password'));
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            });
                          } else 
                          {
                            setState(() 
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DashBoard()),
                              );
                            });
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
