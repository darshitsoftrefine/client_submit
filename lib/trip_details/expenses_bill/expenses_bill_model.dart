
import 'dart:ui';

import 'package:client_submit/themes/themes.dart';
import 'package:flutter/material.dart';

class ExpensesBillModel {
  final String bill;
  final String image;
  final Color color;

  ExpensesBillModel({required this.bill, required this.image, required this.color});


}
List<ExpensesBillModel> expensesList = [
  ExpensesBillModel(bill: 'Petrol Bill', image: 'assets/images/petrol_bill.png', color: Color(0xFF71A1FF)),
  ExpensesBillModel(bill: 'Petrol Bill 2',image: 'assets/images/petrol_bill.png', color: Color(0xFF7B7B7B))
];