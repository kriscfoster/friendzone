import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget {
  
  LoginPage({this.auth, this.onSignedIn});
  final BaseAuth auth;
  final VoidCallback onSignedIn;

  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  loginHandler() async {
    FirebaseUser user = await widget.auth.signIn();
    if (user.uid != null) {
      widget.onSignedIn();
    }
  }

  @override
  Widget build(BuildContext context ) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('FriendZone')),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                child: new Text('Login With Facebook'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  loginHandler();
                },
              )
            ],
          )
        ),
      )
    );
  }
}

