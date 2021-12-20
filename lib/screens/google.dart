import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSingInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount? get user => _user;

  BuildContext? get context => null;
  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      _user = googleUser;
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
    }  catch(e) {
      print(e.toString());
    }
    notifyListeners();
  }

  Future <Null>logOut() async {
    
    try {
        await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
      } catch (e) {
      print("sign out catch: ${e}");
      return null;
    }
  }

}
