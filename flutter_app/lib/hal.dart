import 'package:flutter/material.dart';

class Pagebaru extends StatelessWidget{
  final String menu;
  Pagebaru(this.menu);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$menu'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Text('$menu'),
        ),
      );
  }
  
}