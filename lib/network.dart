import 'package:dio/dio.dart';

import 'Employee.dart';


class DataFetcher{

  DataFetcher();

  final client = Dio();

  Future<List<Employee>> getData() async {

    final url = 'http://dummy.restapiexample.com/api/v1/employees';
    List<Employee> empList = [];

    return
       client.get(url).then((response){
         final body = response.data;
         empList = (body["data"] as List).map((e) => Employee.fromJson(e)).toList();
         return empList;
       });

  }

}