import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context ) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('FriendZone')),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Logged In'),
            ],
          )
        ),
      )
    );
  }
}