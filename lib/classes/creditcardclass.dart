import 'package:flutter/material.dart';

class Creditcard{
  String nombre;
  String path;
  Creditcard({this.nombre, this.path});
}

class CreditCardModel extends StatelessWidget{
  final String nombre;
  final String path;
  const CreditCardModel({Key key, this.nombre, this.path}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width*0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(image: AssetImage("assets/images/${path}.png")),
                Text(nombre)
              ],
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        )
    );
  }

}