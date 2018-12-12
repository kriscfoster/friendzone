import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  login(context) {
    
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
                  login(context);
                },
              )
            ],
          )
        ),
      )
    );
  }
}