import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //baris dan kolom
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Row N Column',
//      home: Scaffold(
//        appBar: AppBar(title: Text('Row & Column'),),
//        body: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text('This'),
//            Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text('This'),
//                Text('is'),
//                Text('Column'),
//              ],
//            ),
//            Text('Row'),
//          ],
//        ),
//      ),
//    );
//  }
  //list
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi',
      home: Scaffold(
        appBar: AppBar(title: Text('List'),),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('list item 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('list item 2'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('list item 3'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}