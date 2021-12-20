import 'dart:async';
import 'facebook.dart';
import 'google.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import '/models/user_model.dart';
import 'signUp.dart';
import 'Main_page.dart';
//import 'package:flutter_login_facebook/flutter_login_facebook.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
//import 'package:twitter_login/twitter_login.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  UserModel? user;
  bool _isVisible = false;

  set _accessToken(AccessToken? _accessToken) {}

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
                    'Login',
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
                          controller: email,
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
                      Container(
                        margin: EdgeInsets.all(25),
                        child: OutlinedButton(
                          child: Text(
                            'Login',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.purple),
                          ),
                          onPressed: () async {
                            user = await validation();
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
                          final provider = Provider.of<FacebookSignInController>(
                              context,
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
                          /*
                        final twitterLogin = TwitterLogin(  
                // Consumer API keys 
                apiKey: 'xxxx',
                // Consumer API Secret keys 
                apiSecretKey: 'xxxx',
                // Registered Callback URLs in TwitterApp
                // Android is a deeplink
                // iOS is a URLScheme
                redirectURI: 'example://',
              );
              final authResult = twitterLogin.login();
              switch (authResult.status) {
                case TwitterLoginStatus.loggedIn:
                  // success
                  break;
                case TwitterLoginStatus.cancelledByUser:
                  // cancel
                  break;
                case TwitterLoginStatus.error:
                  // error
                  break;
              }*/
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
                  "Don't have an account",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
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

  Future loginUser() async {
    try {
      UserCredential result =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
      User? user = result.user;
      return UserModel(email: user?.email, id: user?.uid);
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
            backgroundColor: Colors.grey[200],
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'No User Found !',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                )
              ],
            )));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
            backgroundColor: Colors.grey[200],
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Wrong Password !',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold))
              ],
            )));
      }
    } finally {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
        );
      });
    }
  }

  Future<UserModel?> validation() async {
    if ((email.text.trim().isEmpty) && (password.text.trim().isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
          backgroundColor: Colors.grey[200],
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('All Fields are Empty !',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold))
            ],
          )));
    }
    if (email.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
          backgroundColor: Colors.grey[200],
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please Enter Your Email !',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold))
            ],
          )));
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.text)) {
      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
          backgroundColor: Colors.grey[200],
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please Enter a valid Email !',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold))
            ],
          )));
    } else if (password.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
          backgroundColor: Colors.grey[200],
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please Enter Your Passowrd !',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold))
            ],
          )));
    } else {
      return await loginUser();
    }
  }
/* à fixer 
  Future<UserCredential> signInWithFacebook() async {
    Map<String, dynamic>? _userData;
    final LoginResult result =
        await FacebookAuth.instance.login(permissions: ['email']);
         if (result.status == LoginStatus.success) {
    _accessToken = result.accessToken;
      // get the user data
      // by default we get the userId, email,name and picture
      final userData = await FacebookAuth.instance.getUserData();
      // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");
      _userData = userData;
    } else {
      print(result.status);
      print(result.message);
    }
    setState(() {});
  
     final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(result.accessToken!.token);

    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }*/
}
