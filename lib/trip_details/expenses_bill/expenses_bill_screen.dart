import 'package:client_submit/trip_details/expenses_bill/expenses_bill_model.dart';
import 'package:client_submit/trip_details/passengers_list/passengers_list_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_widgets.dart';
import '../../themes/themes.dart';
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
      appBar: AppBar(
        backgroundColor: CustomColors.secondaryColor,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new, color: CustomColors.primaryColor,),),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 9.0),
          child: Text("Trip Details", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w600),),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize:  const Size.fromHeight(60),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PassengersListScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(145, 35),
                    backgroundColor: CustomColors.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: BorderSide(width: 1, color: CustomColors.primaryColor),
                    ),
                  ),
                  child: Text("Passenger List", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
                ),
                const SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: (){

                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(145, 35),
                    backgroundColor: CustomColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: BorderSide(width: 1, color: CustomColors.primaryColor),
                    ),
                  ),
                  child: Text("Expenses Bill", style: TextStyle(color: CustomColors.secondaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
                ),
                const SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Scanner()),
                    );
                  },
                  child: Text("Check In", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(101, 35),
                    backgroundColor: CustomColors.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: BorderSide(width: 1, color: CustomColors.primaryColor),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 22,),
          ListView.builder(
            shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: expensesList.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12,),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: expensesList[index].color),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: SizedBox(
                      width: 400,
                      height: 131,
                      child: ListTile(
                        // shape: RoundedRectangleBorder(
                        //   side: BorderSide(color: expensesList[index].color)
                        // ),
                        leading: SizedBox(child: Image.asset(expensesList[index].image)),
                        title: Center(child: Text(expensesList[index].bill, style: TextStyle(fontSize: 18.57, fontWeight: FontWeight.w400),)),
                      ),
                    ),
                  ),
                );
              }),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12,),
            child: Card(
              shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFF4DB457)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: SizedBox(
                width: 400,
                height: 131,
                child: IconButton(onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Center(child: Text('Upload Image')),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          FlutterLogo(size: 50,),
                          SizedBox(height: 40,),
                          Row(
                            children: [
                              Text("Bill Name: "),
                              Container(
                                width: 200 ,child: TextField(
                                autofocus: true,
                                textCapitalization:
                                TextCapitalization.sentences,
                                controller: billController,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.grey,
                                        style: BorderStyle.solid),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: CustomColors.circColor,
                                      width: 1.0,
                                    ),
                                  ),
                                  hintText: 'Bill Name',
                                  hintStyle: TextStyle(
                                      color: CustomColors.primaryColor),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.grey,
                                        style: BorderStyle.solid),
                                  ),
                                ),
                              ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text("Amount: "),
                              SizedBox(width: 12,),
                              Container(
                                width: 200 ,child: TextField(
                                autofocus: true,
                                keyboardType: TextInputType.number,
                                textCapitalization:
                                TextCapitalization.sentences,
                                controller: amountController,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.grey,
                                        style: BorderStyle.solid),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: CustomColors.circColor,
                                      width: 1.0,
                                    ),
                                  ),
                                  hintText: 'Amount',
                                  hintStyle: TextStyle(
                                      color: CustomColors.primaryColor),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                        color: Colors.grey,
                                        style: BorderStyle.solid),
                                  ),
                                ),
                              ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    actions:<Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('Submit'),
                      ),
                    ],
                  ) ),
                  icon: Icon(Icons.add, color: Color(0xFF4DB457), size: 70,),)
              ),
            ),
          )
        ],
      ),
    );
  }
}
