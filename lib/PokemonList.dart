import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListView (
              children: <Widget>[
                ListTile (
                  title:  Text('Pikachu'),
                ), //ListTile

                ListTile (
                  title:  Text('Raichu'),
                ), //ListTile

                ListTile (
                  title:  Text('Magneton'),
                ), //ListTile

                ListTile (
                  title:  Text('Zapdos'),
                ), //ListTile

                ListTile (
                  title:  Text('Pichu'),
                ), //ListTile

                ListTile (
                  title:  Text('Electabuzz'),
                ), //ListTile

              ], //Widget
            ) //ListView
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

/*
class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Employees"),
        ),
        body:
        ListView (
          children: <Widget>[
            ListTile (
              title:  Text('Pikachu'),
            ), //ListTile

            ListTile (
              title:  Text('Raichu'),
            ), //ListTile

            ListTile (
              title:  Text('Magneton'),
            ), //ListTile

            ListTile (
              title:  Text('Zapdos'),
            ), //ListTile

            ListTile (
              title:  Text('Pichu'),
            ), //ListTile

            ListTile (
              title:  Text('Electabuzz'),
            ), //ListTile

          ], //Widget
        ) //ListView
    ); //Scaffod
  }
}

 */