import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Instagram Clon',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
            ),
            const Padding(
                padding: EdgeInsets.all(50.0)
            ),
            SignInButton(Buttons.Google,
                onPressed: () {
                  // _handleSignIn().then((user) {
                  //   print(user);
                  // });
                })
          ],
        ),
      )
    );
  }

  // Future<User> _handleSignIn() async {
  //   GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  //   GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  //   User user = (await _auth.signInWithCredential(
  //       GoogleAuthProvider.credential(
  //           idToken: googleAuth.idToken, accessToken: googleAuth.accessToken))).user;
  //   return user;
  // }
}