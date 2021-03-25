import 'package:flutter/material.dart';
import 'package:api/Employee.dart';
import 'EmployeeItem.dart';


class EmpListView extends StatefulWidget {
  EmpListView({Key key}) : super(key: key);

  Employee empZero = new Employee();
  empZero.id = "1";
  empZero.employeeName = "Mohamed";
  empZero.employeeSalary = "2000";
  empZero.employeeAge = "22";
  empZero.employeeImage = "AAA";

  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<EmpListView> {


  List<Employee> employees = [empZero];

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
      body: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemCount: employees.length,
          itemBuilder: (_, index) {
            Employee emp = employees[index];
            return EmployeeItem(emp);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: null,
      ),
    );
  }
}
