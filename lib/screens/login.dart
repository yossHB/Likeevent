import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_likeevent/screens/signUp.dart';
import 'package:flutter_application_likeevent/screens/valide.dart';
//import 'package:twitter_login/twitter_login.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  bool? isChecked = false;

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
                          controller: password,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.lock_outline),
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your Password',
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                            checkColor: Colors.white,
                            overlayColor:
                                MaterialStateProperty.all(Colors.purple),
                            fillColor: MaterialStateProperty.all(Colors.purple),
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(25),
                        child: OutlinedButton(
                          child: Text(
                            'Login',
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
                    GestureDetector(
                      onTap: () {},
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
                      onTap: () {},
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
                      onTap: () async {
                        //await twitterLogin();
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
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
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
                        MaterialPageRoute(builder: (context) => Valide()),
                      );
      });
    }
  }

  void validation() {
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
      return;
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
      return ;
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
    }
    // ignore: unnecessary_null_comparison
    else if (password.text.trim().isEmpty || password.text.trim() == null) {
      // ignore: deprecated_member_use
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
      return;
    } else {
      loginUser();
    }
  }
}
/*
 Future twitterLogin() async {
    final twitterLogin = TwitterLogin(
      /// Consumer API keys
      apiKey: API_KEY,

      /// Consumer API Secret keys
      apiSecretKey: API_SECRET_KEY,

      /// Registered Callback URLs in TwitterApp
      /// Android is a deeplink
      /// iOS is a URLScheme
      redirectURI: 'example://',
    );

    /// Forces the user to enter their credentials
    /// to ensure the correct users account is authorized.
    /// If you want to implement Twitter account switching, set [force_login] to true
    /// login(forceLogin: true);
    final authResult = await twitterLogin.login();
    switch (authResult.status) {
      case TwitterLoginStatus.loggedIn:
        // success
        print('====== Login success ======');
        break;
      case TwitterLoginStatus.cancelledByUser:
        // cancel
        print('====== Login cancel ======');
        break;
      case TwitterLoginStatus.error:
      case null:
        // error
        print('====== Login error ======');
        break;
    }
  }
}*/


