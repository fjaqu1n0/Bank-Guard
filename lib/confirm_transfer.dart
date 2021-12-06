import 'package:flutter/material.dart';
import 'package:sdev_app/dashboard.dart';

class TransferDetails extends StatelessWidget {
  String amountTransferred,accountNumber;
  TransferDetails({Key? key, required this.amountTransferred,required this.accountNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff5f5f5),
        title: const Text('Transfer Details',style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black,),
        ),
       body: Container(
         padding: const EdgeInsets.all(30),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const SizedBox(height: 20,),
            Text('Summary', style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
              fontFamily: 'avenir'
            ),),
            const SizedBox(height: 20,),
            Row(
              children: [
                 IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.send),
                  onPressed: (){},
                ),
                Text('Amount Transferred: $amountTransferred', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir',
                ),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.send),
                  onPressed: (){},
                ),
                Text('Account Number: $accountNumber', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir',
                )),
              ],
            ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
                onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const DashBoard())),
                child: const Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text('Home'),
                ),
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Color(0xffffac30)),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))))
                )
           ],
         )
       )
       );
  }
}
