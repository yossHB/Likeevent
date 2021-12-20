import 'package:flutter/material.dart';
import 'package:flutter_application_likeevent/screens/login_link.dart';
import '/screens/signUp.dart';

class WelcomScreen extends StatelessWidget {
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
                height: 250,
                width: 250,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 70.0),
                  child: Text(
                    'Welcome To The World',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: ElevatedButton(
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(fontSize: 22.0, color: Colors.purple),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LinkLogin()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
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
