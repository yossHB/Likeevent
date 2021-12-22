import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter/foundation.dart';
class FacebookSignInController extends ChangeNotifier {
  //Map? userData;
  Map<String, dynamic>? _userData;
  String welcome = "Facebook";
  
  login() async {
    var result =
        await FacebookAuth.i.login(permissions: ["public_profile", "email"]);
    if (result.status == LoginStatus.success) {
      final requestData = await FacebookAuth.i.getUserData(
        fields: "email, name",
      );
      _userData = requestData;
      notifyListeners();
    }
    setState()=> (
      welcome = _userData?['email']
    );
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(result.accessToken!.token);

    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    
  }
   Future<UserCredential> signInWithFacebook() async {
    Map<String, dynamic>? _userData;
    String welcome = "Facebook";
    final LoginResult result =
        await FacebookAuth.instance.login(permissions: ['email']);

    if (result.status == LoginStatus.success) {
      final userData = await FacebookAuth.instance.getUserData();

      _userData = userData;
    } else {
      print(result.message);
    }

    setState() {
      welcome = _userData?['email'];
    };

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(result.accessToken!.token);

    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }


  logOut() async {
    try {
      await FacebookAuth.i.logOut();
      _userData = null;
      notifyListeners();
    } on Exception {
      return null;
    }
  }
}
