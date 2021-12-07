
import 'package:flutter/material.dart';

class Valide extends StatefulWidget {
  const Valide({ Key? key }) : super(key: key);

  @override
  _ValideState createState() => _ValideState();
}

class _ValideState extends State<Valide> {
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