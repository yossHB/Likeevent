import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_login/twitter_login.dart';
//import 'package:flutter_twitter/flutter_twitter.dart';
//import 'package:flutter/services.dart';

/*void loginTwitter() async {
  final twitterLogin = new TwitterLogin(
      consumerKey: '1NmjJMjOwJJZP7ZU6xjmcZNvq',
      consumerSecret: '7Q87zAWdyUEgOj7P2bWylvyjmI1YV7cQada0nkpFOhTuwLclzs',
      );

  final TwitterLoginResult result = await twitterLogin.authorize();
  String newMessage;

  switch (result.status) {
    case TwitterLoginStatus.loggedIn:
      newMessage = 'Logged in! username: ${result.session.username}';
      break;
    case TwitterLoginStatus.cancelledByUser:
      newMessage = 'Login cancelled by user.';
      break;
    case TwitterLoginStatus.error:
      newMessage = 'Login error: ${result.errorMessage}';
      break;
  }
}*/


void logoutTwitter() async {
  await FirebaseAuth.instance.signOut();
}




void loginTwitter() async {
  final twitterLogin = new TwitterLogin(
      apiKey: '1NmjJMjOwJJZP7ZU6xjmcZNvq',
      apiSecretKey: '7Q87zAWdyUEgOj7P2bWylvyjmI1YV7cQada0nkpFOhTuwLclzs',
      redirectURI: 'flutter-twitter-login://');

  final authResult = await twitterLogin.login();
    switch (authResult.status) {
      case TwitterLoginStatus.loggedIn:
        // success
        print('====== Login success ======');
        await twitterLogin.login().then((value) async {
    final twitterAuthCredentials = TwitterAuthProvider.credential(
        accessToken: value.authToken!, secret: value.authTokenSecret!);
    await FirebaseAuth.instance.signInWithCredential(twitterAuthCredentials);
  });
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