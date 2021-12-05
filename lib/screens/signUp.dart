import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_likeevent/screens/login.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState()=>_SignUpState();
}
class _SignUpState extends State<SignUp>{
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0,bottom:30.0),
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/logo3.png',
                        width: 100,
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.account_circle_outlined),
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your username',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            icon: Icon(Icons.email_outlined),
                            labelText: 'Enter your Email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.enhanced_encryption_outlined),
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your Password',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.enhanced_encryption_outlined),
                            border: UnderlineInputBorder(),
                            labelText: 'Confirm your Password',
                          ),
                        ),
                      ),
                      
                      Container(
                        margin: EdgeInsets.all(25),
                        child: OutlinedButton(
                          child: Text(
                            'Sign Up',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.purple),
                          ),
                          onPressed: () {
                            final String email = emailController.text.trim();
                            final String password = passwordController.text.trim();

                            if(email.isEmpty){
                              print("Email is Empty");
                            } else {
                              if(password.isEmpty){
                                print("Password is Empty");
                              } else {
                              }
                            }
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.purple, width: 1.3),
                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        
                        child: Icon(
                          Icons.facebook_outlined, 
                          color: Colors.white,
                          size: 36.0,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        
                        child: Image.asset(
                        'assets/images/twitter-icon.png',
                        width: 36.0,
                        height: 36.0,
                    ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        
                        child: Image.asset(
                        'assets/images/google-plus-icon.png',
                        width: 36.0,
                        height: 36.0,
                    ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "OR",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                Text(
                  "Already have an account",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: OutlinedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Login()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 1.3),
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}


