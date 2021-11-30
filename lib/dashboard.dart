import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'send_money.dart';
import 'package:money_transfer_app/providers/amount_provider.dart';



class DashBoard extends StatelessWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  DashScreen(),
    );
  }
}

class DashScreen extends StatefulWidget {
  const  DashScreen({ Key? key }) : super(key: key);

  @override
  _DashScreenState createState() => _DashScreenState();
}

class _DashScreenState extends State< DashScreen> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo2.png'),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Services', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir',
                ),),
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(Icons.dialpad),
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(Icons.send),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const TransferMoney()));
                  },
                )
              ],
            ),
            SingleChildScrollView(),
            Expanded(
              child: GridView.count(crossAxisCount: 4,
              childAspectRatio: 0.7,
              children: [
                serviceWidget("sendMoney", "Send\nMoney"),
                serviceWidget("phone", "Mobile\nRecharge"),
                serviceWidget("electricity", "Electricity\nBill"),
                serviceWidget("movie", "Movie\nTicket"),
                serviceWidget("flight", "Flight\nTicket"),
                serviceWidget("water", "Water\nBill"),
                serviceWidget("telco", "Telecom\nServices"),
                serviceWidget("government", "Government"),
                serviceWidget("internet", "Cable/Internet"),
                serviceWidget("transpo", "Transportation"),
                serviceWidget("credit", "Credit/Debit"),
                serviceWidget("insurance", "Insurance"),
              ],
              ),
            )
          ],
        ),
        ),
      );
    
  }
  Column serviceWidget(String img, String name)
  {
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const TransferMoney()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xfff1f3f6)
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/$img.png') 
                      )
                  ),
                ),
              ),
            ),
            ),
          ),
          SizedBox(height: 5,),
          Text(name, style: TextStyle(
            fontFamily: 'avenir',
            fontSize: 14,
          ),textAlign: TextAlign.center,)
      ],
    );

  }

}
