
import 'package:flutter/material.dart';
import 'selectcardscreen.dart';

class Mainscreen extends StatefulWidget{
  @override
  _MainscreenState createState()=>_MainscreenState();

}

class _MainscreenState extends State<Mainscreen>{
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
                              image: DecorationImage(image: AssetImage('assets/images/image_1.png'), fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                          )
                        ),
                        Column(
                          children: [
                            Text('Digital',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40,fontStyle: FontStyle.italic)),
                            Text('wallet',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40,fontStyle: FontStyle.italic)),
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
                                'Balance',
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25,fontStyle: FontStyle.normal),
                                textAlign: TextAlign.start
                            ),
                            margin: EdgeInsets.only(right: 250)
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width*0.8,
                          height: 60,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'Rp.76.547.000,-',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontStyle: FontStyle.italic)
                          ),
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
                                'TOP UP',
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20)
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(
                                builder: (context) => Selectcardscreen()
                            ));
                          },
                        ),
                        SizedBox(height: 20),
                        Container(
                            child: Text(
                                'QR Code',
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25,fontStyle: FontStyle.normal),
                                textAlign: TextAlign.start
                            ),
                            margin: EdgeInsets.only(right: 250)
                        ),
                        SizedBox(height: 20),
                        Image(
                            image: AssetImage('assets/images/image_14.png')
                        )
                      ],
                      ),
                    )
                  ],
              ),


            )
        )
        ),
    );
  }

}