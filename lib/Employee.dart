import 'dart:convert';
//import 'package:dio/dio.dart';




class Employee{
  String id;
  String employeeName;
  String employeeSalary;
  String employeeAge;
  String employeeImage;

  Employee.details();

  Employee({
    this.id,
    this.employeeName,
    this.employeeSalary,
    this.employeeAge,
    this.employeeImage,
  });
}


/*
Employee employeesFromJson(String str) => Employee.fromJson(json.decode(str));
String employeesToJson(Employee data) => json.encode(data.toJson());


class Employee {
  Employee({
    this.data,
  });

  List<Datum> data;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.salary,
    this.age,
    this.image,
  });

  String id;
  String name;
  String salary;
  String age;
  String image;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    salary: json["salary"],
    age: json["age"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "age": age,
    "salary": salary,
    "images": image,
  };
}


final client = Dio();

Future<Employee> getData() async {
  final url = 'http://dummy.restapiexample.com/api/v1/employees';
  List<Employee> empList = [];
  try {
    final response = await client.get(url);

    if (response.statusCode == 200) {
      return Employee.fromJson(response.data);
    } else {
      print('${response.statusCode} : ${response.data.toString()}');
      throw response.statusCode;
    }
  } catch (error) {
    print(error);
  }
  Employee data = await getData();
}
*/
