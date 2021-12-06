import 'package:flutter/material.dart';
import 'package:money_transfer_app/service_money.dart';


class Merchants extends StatefulWidget {
   final int service;
  const Merchants(this.service, { Key? key }) : super(key: key);

  @override
  _MerchantsState createState() => _MerchantsState();
}

class _MerchantsState extends State<Merchants> 
{
  List<List> services = [
   [
    'Far Eastern University',
    'Mapua',
    'University of Mindanao Matina',
    'Malayan Colleges Mindanao',
    'University of the Immaculate Concepcion',
    'Asian International School of Aeronautics and Technology',
    'Ateneo De Davao University',
    'San Pedro College',
    'Davao Medical School Foundation',
    'Ramon Magsaysay Memorial Colleges'
  ],  
  [
    "Adventist Medical Center Manila",
    "Fortune Medicare",
    "iConex",
    "KonsultaMD",
    "Kaiser International",
    "Maxicare",
    "Davao Doctors Hospital",
    "San Pedro Hospital",
    "St. Dominic Medical Center",
    "Sun Life"
  ],
  [
    "Adendimun",
    "APEC",
    "ANECO",
    "ANTECO",
    "BENECO",
    "CELCO",
    "MERALCO",
    "DANECO",
    "SOCOTECO",
    "Davao Light"
  ],
  [
    "SM City Davao Cinema",
    "Gaisano Mall Davao Cinema",
    "KCC Cinema",
    "Ayala Malls Cinema",
    "Abreeza Cinema",
    "NCCC Mall Cinema",
    "SM Lanang Premier",
    "Robinsons Movieworld",
    "Gaiso Grand Citygate",
    "SM Cinema Megamall"
  ],
  [
     "AirAsia",
    "AP CARGO",
    "BIYAHEKO",
    "Cebu Pacific",
    "Easytrip RFID",
    "Philippine Airlines",
    "STARLITE FERRIES",
    "SUPERCAT",
    "TRANS-ASIA SHIPPING LINES",
    "Viacom"
  ],
  [
     "Angeles Water",
    "Aqua Centro",
    "Baguio Water District",
    "Boracay Water",
    "BP Water",
    "Calasiao Water",
    "CDO Water",
    "Clark Water",
    "Davao City Water District",
    "Gensan City Water District"
  ],
  [
     "Bayantel",
    "Bedoo",
    "Globe at Home",
    "Globe Postpaid",
    "PLDT",
    "Eastern Telecoms",
    "RACITELCOM",
    "SITELCO",
    "Smart Communications",
    "Wire Free Inc"
  ],
  [
    "BIR",
    "BSP",
    "DFA",
    "LTFRB",
    "Marina",
    "MMDA",
    "NBI",
    "NHMFC",
    "POEA",
    "TIEZA"
  ],
  [
    "Cablelink",
    "Cignal",
    "Comclark",
    "Gnet",
    "GSAT",
    "KCAT",
    "Now Corp",
    "Skycable",
    "Sky Broadband",
    "TETCO"
  ],
  [
    "GrabTaxi",
    "Angkas",
    "Grab",
    "Hirna",
    "GO LAG",
    "OWTO",
    "Uber",
    "Hype",
    "MiCab",
    "GoMoto"
  ],
  [
    "AUB Credit Cards",
    "BDO AMEX",
    "BDO MC OR VISA",
    "BPI Credit Card",
    "EastWest Bank",
    "HSBC",
    "LCC EXPRESSLINK",
    "PNB Credit Card",
    "Robinsons Credit Card",
    "Unionbank Visa or MC"
  ],
  [
    "Allianz PNB Life",
    "CCLPI",
    "Cocolife",
    "DIALEX",
    "Fortune Life",
    "Generali PH",
    "Insular Life",
    "MAPFRE",
    "Pioneer Life",
    "Pru Life UK"
  ],
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        backgroundColor: const Color(0xfff5f5f5),
        title: const Text('Select Service',style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black,),
        ),
        body: Container(
          child: ListView(
           children: [
             Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][0], context);
                },
                title: Text(services[widget.service][0]),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][1],context);
                },
                title: Text(services[widget.service][1]),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][2], context);
                },
                title: Text(services[widget.service][2]),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][3],context);
                },
                title: Text(services[widget.service][3]),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][4],context);
                },
                title: Text(services[widget.service][4]),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][5],context);
                },
                title: Text(services[widget.service][5]),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][6],context);
                },
                title: Text(services[widget.service][6]),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][7],context);
                },
                title: Text(services[widget.service][7]),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][8],context);
                },
                title: Text(services[widget.service][8]),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  payService(services[widget.service][9],context);
                },
                title: Text(services[widget.service][9]),
              ),
            ),
           ]
         )
        )
    );
  } 
}

void payService(String serviceName, BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => ServiceMoney(serviceName)));
}
