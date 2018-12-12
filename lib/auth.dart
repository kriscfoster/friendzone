import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'dart:async';

abstract class BaseAuth {
  Future<FirebaseUser> currentUser();
  Future<FirebaseUser> signIn();
}


class Auth implements BaseAuth {
  Future<FirebaseUser> currentUser() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    return user;
  }

  Future<FirebaseUser> signIn() async {
    final FacebookLogin facebookSignIn = new FacebookLogin();
    final FirebaseAuth _fAuth = FirebaseAuth.instance;

    final FacebookLoginResult result =
      await facebookSignIn.logInWithReadPermissions(['email']);

    FirebaseUser user =
        await _fAuth.signInWithFacebook(accessToken: result.accessToken.token);
    //Token: ${accessToken.token}
    return user;
  }
}
