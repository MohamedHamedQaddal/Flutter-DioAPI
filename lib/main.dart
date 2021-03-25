import 'package:api/Employee.dart';
import 'package:api/EmployeeItem.dart';
import 'package:flutter/material.dart';
import 'package:api/EmpListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:EmpListView(),
      // MyHomePage(title: 'Add Employee'),
      debugShowCheckedModeBanner: false,
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 40),
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  decoration: new InputDecoration(
                      hintText: 'Employee Name'
                  ),
                ),
                TextField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  decoration: new InputDecoration(
                      hintText: 'Employee Age'
                  ),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EmpListView()));
                  },
                  child:Text("ADD"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
