import 'package:api/Employee.dart';
import 'package:api/EmployeeItem.dart';
import 'package:flutter/material.dart';
import 'package:api/EmpListView.dart';
import 'package:scoped_model/scoped_model.dart';




// I tried applying the provider model and failed
// then I tried the scoped model but I was already late

//the basic idea was...
// creating a named constructor with 2 parameters: name, age
//that are got from the text fields
//and then assigning the button as the consumer to...
// assemble the object (Data population)
//push the view and add an Employee to the list

// but the question is...
//How do we push an employee into the list if it isn't yet rendered?
//Is this like adding the object to a nullified list?!!!





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
      home:MyHomePage(),
      //MyHomePage(title: 'Add Employee'),
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
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();



  //Employee empContainer;
    //String mName;
    //String mAge;

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
                  controller: controller1,
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  decoration: new InputDecoration(
                      hintText: 'Employee Name'
                  ),
                  onChanged: (newText){
      //              mName = newText;
                  },
                ),
                TextField(
                  controller: controller2,
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  decoration: new InputDecoration(
                      hintText: 'Employee Age'
                  ),
                  onChanged: (newText){
                    // mAge = newText;
                  },
                ),
                },ScopedModelDescendant<AppModel>(
                  builder: (context, child, model)) => RaisedButton(
//                  Consumer<Provider>(builder:(context, prov, child){
//                    return
                  ,)onPressed: (){
                      Employee emp = Employee(controller1.text, controller2.text);
                      model.addEmployee(emp);
                      setState(() => controller.text = "");
//                    Provider.of(context)
//                    assembleEmployee(mName, mAge).add(empList);
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


/*
Employee assembleEmployee(String name, String age){
  Employee empContainer = Employee.entered(name, age);
  return empContainer;
}

class Provider with ChangeNotifier{
  Provider prov;
  //assembleEmployee(mName, mAge);
}

 */















