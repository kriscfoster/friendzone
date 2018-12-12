import 'package:flutter/material.dart';
import 'root_page.dart';
import 'auth.dart';

void main () {
  runApp(
    new MaterialApp(
      home: new RootPage(auth: new Auth()),
    )
  );
}
