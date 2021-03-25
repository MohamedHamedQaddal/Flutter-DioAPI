import 'package:api/network.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api/Employee.dart';
import 'EmployeeItem.dart';


class EmpListView extends StatefulWidget {
  EmpListView({Key key}) : super(key: key);

  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<EmpListView> {

  List<Employee> employees = new List();

  @override
  void initState() {
    employees.add(
      Employee(
          id: "1",
          employeeName: "Mohamed",
          employeeSalary: "2000",
          employeeAge: "22",
          employeeImage: "AAA"
    ));
    employees.add(
      Employee(
          id: "1",
          employeeName: "Mohamed",
          employeeSalary: "2000",
          employeeAge: "22",
          employeeImage: "AAA"
    ));
    employees.add(
      Employee(
          id: "1",
          employeeName: "Mohamed",
          employeeSalary: "2000",
          employeeAge: "22",
          employeeImage: "AAA"
      ));
    employees.add(
      Employee(
          id: "1",
          employeeName: "Mohamed",
          employeeSalary: "2000",
          employeeAge: "22",
          employeeImage: "AAA"
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Employee App")),
      body: FutureBuilder(
        future: DataFetcher().getData(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting && !snapshot.hasData){
            return Center(child: CircularProgressIndicator(),);
          }else if(snapshot.hasError){
            return Center(
              child: Text("Error"),
            );
          }else return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (_, index) {
              Employee emp = snapshot.data[index];
              print(snapshot.data[index].toString());
              return EmployeeItem(emp);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){}, label: Text("+"),
      ),
    );
  }
}
