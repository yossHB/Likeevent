import 'package:flutter/material.dart';
import 'login.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/images/logo3.png'),
                height: 200,
                width: 200,
              ),
              Container(
                child: Text(
                  'Welcome To The World',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: ElevatedButton(
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(fontSize: 20.5, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    elevation: 4,
                    shadowColor: Colors.purple[400],
                  ),
                ),
              ),
              Container(
                  child: Text(
                "Don't you have an account",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
              Container(
                margin: EdgeInsets.all(25),
                child: OutlinedButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white, width: 1.3),
                    elevation: 4,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple,
              Colors.deepPurple,
              Colors.purple,
              Colors.deepPurple,
            ],
          )),
        ),
      ),
    );
  }

  gradient(LinearGradient linearGradient) {}
}




