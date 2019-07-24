import 'package:flutter/material.dart';

void main(){
  runApp(MyAp());
}
class MyAp extends StatefulWidget{
  @override
  MyStat createState() => MyStat();
}
//tabbar
class MyStat extends State<MyAp> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
  void initState() {
    tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TabBar App'),
          bottom: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.dashboard),),
              Tab(icon: Icon(Icons.data_usage),),
              Tab(icon: Icon(Icons.close),),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            Center(child: Text('Home'),),
            Center(child: Text('Dashboard'),),
            Center(child: Text('Data Usage'),),
            Center(child: Text('Close'),),
          ],
        ),
      ),
    );
  }
}
//gridview
class MyStates extends State<MyAp>{
  List<int> item = new List();
  @override
  void initState() {
    for(int i=0;i<30;i++){
      item.add(i);
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          itemCount: item.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index){
            return Card(
              color: Colors.blue,
              child: Padding(padding: const EdgeInsets.all(25.0)),
            );
        },
        ),
      ),
    );
  }
}
//arraylist
class MyState extends State<MyAp>{
  List<int> item = new List();
  @override
  void initState() {
    for(int i = 0;i<25;i++){
      item.add(i);
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'array list',
      home: Scaffold(
        appBar: AppBar(title: Text('Array of List'),),
        body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
              title: Text('item nomor : $index'),
              trailing: Icon(Icons.print),
            );
          },
        ),
      ),
    );
  }
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
