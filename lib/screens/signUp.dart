import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'facebook.dart';
import 'google.dart';
import 'login.dart';
import 'Main_page.dart';
import 'twitter.dart';

/* sign Up page */
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  /* parameters */
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController userName = new TextEditingController();
  bool _isVisible = false;
  late UserCredential userCredential;

  /* fct to send data to the firebase */
  sendData() async {
    try {
      userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim());
      /* collect use data */
      await FirebaseFirestore.instance.collection('userData').add({
        'userName': userName.text.trim(),
        'email': email.text,
        'password': password.text,
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    } /* in case of an error of email or password*/
    on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
            backgroundColor: Colors.grey[200],
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('weak password !',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold))
              ],
            )));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.grey[200],
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('The account is already exist ! ',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold))
              ],
            )));
      }
    } catch (e) {
      print(e);
    }
  }

  /* fct to validate data in the submission */
  /* the error appear in the snack bare */
  /* trim() fct to remove the espace ' '  */
  void validation() {
    if (userName.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.grey[200],
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(' Please Enter your username!',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold))
            ],
          )));
      return;
    }
    if (email.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.grey[200],
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(' Please Enter your email!',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold))
            ],
          )));
      return;
    }
    /* valide the format of the email */
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.text)) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.grey[200],
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please Enter a valid Email !',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold))
            ],
          )));
      return;
    }
    /* verif the presence of the password */
    if (password.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.grey[200],
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(' Please Enter your Password !',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold))
            ],
          )));

      return;
    } else {
      sendData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
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
                      /* username container */
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          controller: userName,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.account_circle_outlined),
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your username',
                          ),
                        ),
                      ),
                      /* email container */
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            icon: Icon(Icons.email_outlined),
                            labelText: 'Enter your Email',
                          ),
                        ),
                      ),
                      /* password container */
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          obscureText: !_isVisible,
                          controller: password,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isVisible = !_isVisible;
                                  });
                                },
                                icon: Icon(_isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            icon: Icon(Icons.lock_outline),
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your Password',
                          ),
                        ),
                      ),
                      /* submit buttom */
                      Container(
                        margin: EdgeInsets.all(25),
                        child: OutlinedButton(
                          child: Text(
                            'Sign Up',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.purple),
                          ),
                          onPressed: () {
                            validation();
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
                    IconButton(
                        onPressed: () async {
                          //await signInWithFacebook();
                          final provider =
                              Provider.of<FacebookSignInController>(context,
                                  listen: false);
                          provider.login();
                        },
                        icon: Icon(
                          Icons.facebook_outlined,
                          color: Colors.white,
                          size: 36.0,
                        ),
                        iconSize: 40,
                        color: Colors.green),
                    IconButton(
                        onPressed: () async {
                          loginTwitter();
                        },
                        icon: Image.asset(
                          'assets/images/twitter-icon.png',
                          width: 36.0,
                          height: 36.0,
                        ),
                        iconSize: 40,
                        color: Colors.green),
                    IconButton(
                        onPressed: () {
                          final provider = Provider.of<GoogleSingInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                        icon: Image.asset(
                          'assets/images/google-plus-icon.png',
                          width: 36.0,
                          height: 36.0,
                        ),
                        iconSize: 40,
                        color: Colors.green),
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
                        MaterialPageRoute(builder: (context) => Login()),
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
