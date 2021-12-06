import 'package:flutter/material.dart';
import 'package:money_transfer_app/billing_screen.dart';
import 'package:provider/provider.dart';
import 'send_money.dart';
import 'package:money_transfer_app/providers/balance.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xfff5f5f5),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo2_2.png'),
                          fit: BoxFit.contain
                        )
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("Bank Guard", style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'ubuntu',
                      fontSize: 25
                    ),)
                  ]
                )
              ],
            ),
            SizedBox(height: 20,),
            Text('Account Overview', style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
              fontFamily: 'avenir'
            ),),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xffdedede),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Provider.of<AmountProvider>(context).getSavings.toString(), style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: 5,),
                  Text("Available Balance", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                    ),)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox( height: 10,),
            SizedBox(height: 20,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Send Money', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir',
                ),),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.send),
                  onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const TransferMoney()));
                  },
                )
              ],
            ),
            SizedBox( height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Services', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir',
                ),),
              ],
            ),
            SingleChildScrollView(),
            Expanded(
              child: GridView.count(crossAxisCount: 4,
              childAspectRatio: 0.7,
              children: [
                 Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(0, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 9, name: 'School'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(1, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 5, name: 'Healthcare'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(2, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 2, name: 'Electric Utilities'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(3, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 8, name: 'Cinema'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(4, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 3, name: 'Airlines'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(5, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 12, name: 'Water Utilities'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(6, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 10, name: 'Telecommunications'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(7, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 4, name: 'Government'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(8, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 7, name: 'Cable/Internet'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(9, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 11, name: 'Land Transportation'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(10, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 1, name: 'Credit/Debit'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xfff1f3f6),
                    child: InkWell(
                      onTap: () {
                        setValue(11, context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          ServiceIcon(id: 6, name: 'Insurance'),
                        ],
                      ),
                    ),
                  ),
              ],
              ),
            )
          ],
        ),
        ),
      );
    
  }
  
}
class ServiceIcon extends StatelessWidget {
  final String name;
  final int id;
  const ServiceIcon({Key? key, required this.id, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xfff1f3f6),
          backgroundImage: AssetImage('assets/images/service$id.png'),
          ),  
        SizedBox(height: 10,),
        Text('$name',style: TextStyle(
            fontFamily: 'avenir',
            fontSize: 14,
          ),textAlign: TextAlign.center,)
      ],
    );
  }
}

void setValue(int service, BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Merchants(service)),
  );
}

