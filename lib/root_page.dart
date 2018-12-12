import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'auth.dart';

class RootPage extends StatefulWidget {
  RootPage({this.auth});
  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => new _RootPageState();
}

enum AuthStatus {
  notSignedIn,
  signedIn,
}

class _RootPageState extends State<RootPage> {
  AuthStatus authStatus = AuthStatus.notSignedIn;

  @override
  void initState() {
    super.initState();
    widget.auth.currentUser().then((user) {
      print(user);
      setState(() {
        //authStatus = AuthStatus.signedIn;
      });
    });
  }

  Widget build(BuildContext context) {
    switch(authStatus) {
      case AuthStatus.notSignedIn:
        return new LoginPage();
      case AuthStatus.signedIn:
        return new HomePage();
    }
  }
}