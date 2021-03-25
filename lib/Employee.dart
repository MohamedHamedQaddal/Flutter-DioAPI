import 'dart:convert';
import 'package:api/EmployeeItem.dart';
import 'package:dio/dio.dart';
import 'package:scoped_model/scoped_model.dart';


class AppModel extends Model{
  List<Employee> _list = [];
  List<Employee> get list => _list;

  void addEmployee(Employee emp){
    _list.add(emp);
  }
}


class Employee extends Model{
  String id;
  String employeeName;
  String employeeSalary;
  String employeeAge;
  String employeeImage;

  Employee.details();


  Employee.entered(String name, String age){
    this.employeeName = name;
    this.employeeAge = age;
  }

  Employee( {
    this.id,
    this.employeeName,
    this.employeeSalary,
    this.employeeAge,
    this.employeeImage,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    id: json["id"],
    employeeName: json["employee_name"],
    employeeSalary: json["employee_salary"],
    employeeAge: json["employee_age"],
    employeeImage: json["employee_image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "employee_name": employeeName,
    "employee_age": employeeAge,
    "employee_salary": employeeSalary,
    "employee_image": employeeImage,
  };



}

