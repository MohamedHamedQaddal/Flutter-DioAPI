import 'package:flutter/material.dart';
import 'package:api/Employee.dart';


class EmployeeItem extends StatelessWidget {
  Employee emp;

  EmployeeItem(this.emp, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              height: 100,
              child: Image.asset(emp.employeeImage),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  emp.employeeName,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                Text(
                  emp.employeeName,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
