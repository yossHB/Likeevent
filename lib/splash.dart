import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: (Image.asset('assets/images/logo1.png')),
    );
  }
}


/*import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

class Splash extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: MyHomePage(title: 'likeevent',),
      image: new Image.network('assets/images/logo1.png'),
      photoSize: 100.0,
    );
  }
  
  /*const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          Image.asset('assets/images/logo1.png'),
        ),
      );
  }*/
}
*/