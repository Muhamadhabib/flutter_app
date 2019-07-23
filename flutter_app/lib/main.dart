import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Row N Column',
      home: Scaffold(
        appBar: AppBar(title: Text('Row & Column'),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('This'),
                Text('is'),
                Text('Column'),
              ],
            ),
            Text('Row'),
          ],
        ),
      ),
    );
  }
}
