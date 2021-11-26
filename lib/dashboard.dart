import 'package:flutter/material.dart';

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
                          image: AssetImage('assets/images/logo.png'),
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
                      Text("10,000", style: TextStyle(
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
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffac30)
                    ),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    )
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Send Money", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'avenir'
                    ),),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/scanqr.png') 
                        )
                      ),
                    )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffac30),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 40,
                    ),
                  ),
                  avatarWidget("avatar1", "Jonathan"),
                  avatarWidget("avatar2", "Joseph"),
                  avatarWidget("avatar3", "Suzie"),
                ],
              ),
            ),
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
                )
              ],
            ),
            Expanded(
              child: GridView.count(crossAxisCount: 4,
              childAspectRatio: 0.7,
              children: [
                serviceWidget("sendMoney", "Send\nMoney"),
                serviceWidget("receiveMoney", "Receive\nMoney"),
                serviceWidget("phone", "Mobile\nRecharge"),
                serviceWidget("electricity", "Electricity\nBill"),
                serviceWidget("tag", "Cashback\nOffers"),
                serviceWidget("movie", "Movie\nTicket"),
                serviceWidget("flight", "Flight\nTicket"),
                serviceWidget("more", "More\n"),
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
            onTap: (){},
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
  Container avatarWidget(String img, String name)
    {
      return Container(
        margin: EdgeInsets.only(right: 10),
        height: 150,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xffdedede)
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/$img.png'),
                  fit: BoxFit.contain
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 2
                )
              ),
            ),
            Text(name, style: TextStyle(
              fontSize: 16,
              fontFamily: 'avenir',
              fontWeight: FontWeight.w700
            ),)
          ],
        ),
      );
    }
}
