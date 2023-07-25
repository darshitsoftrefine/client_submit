import 'package:client_submit/trip_details/expenses_bill/expenses_bill_model.dart';
import 'package:client_submit/trip_details/passengers_list/passengers_list_screen.dart';
import 'package:flutter/material.dart';
import '../../constants/custom_widgets.dart';
import '../check_in/check_in_qr.dart';

class ExpensesBillScreen extends StatefulWidget {
  const ExpensesBillScreen({super.key});

  @override
  State<ExpensesBillScreen> createState() => _ExpensesBillScreenState();
}

class _ExpensesBillScreenState extends State<ExpensesBillScreen> {
  TextEditingController billController = TextEditingController();
  TextEditingController amountController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomWidgets().expensesTopBar(context, () { Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PassengersListScreen()),
      );}, () {  Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Scanner()),
      );}),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 22,),
            ListView.builder(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: expensesList.length,
                itemBuilder: (context, index){
                  return CustomWidgets().expensesList(expensesList[index].color, expensesList[index].image, expensesList[index].bill);
                }),
            CustomWidgets().expensesthirdTile(context, billController, amountController)
          ],
        ),
      ),
    );
  }
}
