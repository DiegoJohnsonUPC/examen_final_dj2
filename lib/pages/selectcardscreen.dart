import 'package:examen_final/classes/creditcardclass.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'newcardscreen.dart';



class Selectcardscreen extends StatefulWidget{
  @override
  _SelectcardscreenState createState()=>_SelectcardscreenState();

}

class _SelectcardscreenState extends State<Selectcardscreen>{
  List<Creditcard> cardlist;
  @override
  void initState(){
    cardlist = new List<Creditcard>();
    cardlist.add(new Creditcard(nombre: 'MasterCard', path: 'image_10'));
    cardlist.add(new Creditcard(nombre: 'Visa', path: 'image_11'));
    cardlist.add(new Creditcard(nombre: 'JCB', path: 'image_12'));
    cardlist.add(new Creditcard(nombre: 'American Express', path: 'image_13'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    fit: StackFit.loose,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/image_9.png'), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                        )
                      ),
                      Column(
                        children: [
                          Text('Credit',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40,fontStyle: FontStyle.italic)),
                          Text('Card',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40,fontStyle: FontStyle.italic)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.lightBlue[50]
                    ),
                    child: Column(

                      children: [
                        SizedBox(height: 40),
                        Container(
                            child: Text(
                                'Select a credit card',
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25,fontStyle: FontStyle.normal),
                                textAlign: TextAlign.start
                            ),
                            margin: EdgeInsets.only(right: 150)
                        ),
                        SizedBox(height: 20),
                        ListView.separated(
                          itemCount: cardlist.length,
                          separatorBuilder: (context,i) => const Divider(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context,i){
                            return CreditCardModel(nombre: cardlist[i].nombre, path: cardlist[i].path);
                          },
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width*0.8,
                            height: 60,

                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                                'ADD CARD',
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20)
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(
                                builder: (context) => NewCardPage()
                            ));
                          },
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width*0.8,
                            height: 60,

                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                                'QR',
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20)
                            ),
                          ),
                          onTap: () async{
                            String cameraScanResult = await scanner.scan();
                            print(cameraScanResult);
                          },
                        )


                      ],
                    ),
                  )
                ],
              ),
            )
          )
        )
    );
  }
}