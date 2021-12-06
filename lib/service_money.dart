//duplicate of send_money.dart 
//but intended for the services

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sdev_app/providers/balance.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:sdev_app/service_details.dart';

class ServiceMoney extends StatefulWidget {
  String serviceName;
  ServiceMoney(this.serviceName,{Key? key, }) : super(key: key);

  @override
  _ServiceMoneyState createState() => _ServiceMoneyState();
}

class _ServiceMoneyState extends State<ServiceMoney> {
  TextEditingController amountTransferController = TextEditingController();
   TextEditingController accountNumberController = TextEditingController();
    TextEditingController accountNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: const Color(0xfff5f5f5),
        title: const Text('Transfer Money',style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black,),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
               widget.serviceName, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15.0.sp),
            ),
            const SizedBox(
              height: 50.0,
            ),
            SizedBox(
              width: 80.0.w,
              child: TextField(
                controller: amountTransferController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Amount to be transferred',
                  fillColor: Color(0xFFF3E5F5),
                 filled: true,
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            SizedBox(
              width: 80.0.w,
              child: TextField(
                controller: accountNameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Account Name',
                  fillColor: Color(0xFFF3E5F5),
                 filled: true,
                ),
              ),
            ),
             const SizedBox(height: 20.0,),
             SizedBox(
               width: 80.0.w,
              child: TextField(
                controller: accountNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Account Number',
                  fillColor: Color(0xFFF3E5F5),
                 filled: true,
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(12),
                ],
              ),
             ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
                onPressed: () => transferMoney(
                    int.parse(amountTransferController.text),
                    accountNumberController.text,
                    context),
                child: const Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text('Transfer Money'),
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
        ),
      ),
    );
  }

  void transferMoney(int amount, String accountNumber, BuildContext context) {
    int savings =
        Provider.of<AmountProvider>(context, listen: false).getSavings;
    if (amount > savings) {
      SnackBar snackBar = SnackBar(
          content: const Text('Amount is greater than savings.'),
          action: SnackBarAction(label: 'Close', onPressed: () {}));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (amount > 200) {
      SnackBar snackBar = SnackBar(
          content: const Text('Amount greater than 200 pesos.'),
          action: SnackBarAction(label: 'Close', onPressed: () {}));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      Provider.of<AmountProvider>(context, listen: false)
          .subtractSavings(amount);
     Navigator.push(context,MaterialPageRoute(builder: (context) => ServiceDetails(
       amountTransferred: amountTransferController.text, 
       accountNumber: accountNumberController.text, 
       accountName: accountNameController.text,)));
    }
  }
}
