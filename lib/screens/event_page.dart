
import 'package:flutter/material.dart';

class Validea extends StatefulWidget {
  const Validea({ Key? key }) : super(key: key);

  @override
  _ValideaState createState() => _ValideaState();
}

class _ValideaState extends State<Validea> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Valide',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}