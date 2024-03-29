import 'package:flutter/material.dart';
import 'hal.dart';

void main(){
  runApp(MaterialApp(home: MyAp2()));
}
class MyAp extends StatefulWidget{
  @override
  MySta5 createState() => MySta5();
}
class MyAp2 extends StatelessWidget{
  final GlobalKey<ScaffoldState> sKey = GlobalKey<ScaffoldState>();
  void method(){
    sKey.currentState.showSnackBar(SnackBar(content: Text('this is snacbar')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snacbar'),
        backgroundColor: Colors.deepOrange,
      ),
      key: sKey,
      body: Center(
        child: RaisedButton(onPressed: (){method();},child: Text('Snacbar'),),
      ),
    );
  }
}
//alert dialog
class MySta5 extends State<MyAp>{
  void dialog(){
    showDialog(
      context: context,
      // ignore: deprecated_member_use
      child: AlertDialog(
        title: Text('Warning'),
        content: Text('Anda Yakin Ingin Keluar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
              Navigator.pop(context);
            }
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            dialog();
          },
          child: Text('Alert Dialog'),
        ),
      ),
    );
  }
}
//simple dialog
class MySta4 extends State<MyAp>{
  SimpleDialog sd;
  void dialog(){
    sd = SimpleDialog(
      title: Text('Pilih Salah Satu'),
      children: <Widget>[
        SimpleDialogOption(
          child: Text('Jakarta'),
          onPressed: (){
            print('Jakarta');
          },
        ),
        SimpleDialogOption(
          child: Text('Padang'),
          onPressed: (){
            print('Padang');
          },
        ),
        SimpleDialogOption(
          child: Text('Close'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
    // ignore: deprecated_member_use
    showDialog(context: context,child: sd);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            dialog();
          },child: Text('Show Simple Dialog'),
        ),
      ),
    );
  }

}
//drawer & routes
class MySta3 extends State<MyAp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigasi Drawer'),
          backgroundColor: Colors.deepOrange,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('habib'),
                accountEmail: Text('habib@gmail.com'),
                currentAccountPicture: CircleAvatar(backgroundColor: Colors.deepPurple,child: Text('P'),),
                decoration: BoxDecoration(color: Colors.amber),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(backgroundColor: Colors.blue,child: Text('X'),),
                  CircleAvatar(backgroundColor: Colors.black,child: Text('Y'),),
                ],
              ),
              ListTile(
                title: Text('Home'),
                trailing: Icon(Icons.home),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=>Pagebaru('Welcome Home'))
                ),
              ),
              ListTile(
                title: Text('Laptop'),
                trailing: Icon(Icons.laptop),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=>Pagebaru('Welcome Laptop'))
                ),
              ),
              ListTile(
                title: Text('Close'),
                trailing: Icon(Icons.close),
                onTap: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      );
  }
}
//button
class MySta2 extends State<MyAp>{
  String text = '';
  void btn(value){
    setState(() {
      text = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'button',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('button'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
              btn('You Press me madafaka!');
              },
              child: Text('Klik Button'),
            ),
            FlatButton(onPressed: null, child: Text('The Flat Button')),
            Text(text)
          ],
        ),
      ),
    );
  }

}
//textfield
class MySta extends State<MyAp>{
  String text = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('TextField'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              onChanged: (String txt){
                setState(() {
                  text = txt;
                });
              },
              decoration: InputDecoration(
                hintText: 'Input Username',
                labelText: 'Username',
              ),
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
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
            Center(child: Text('Close '),),
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
