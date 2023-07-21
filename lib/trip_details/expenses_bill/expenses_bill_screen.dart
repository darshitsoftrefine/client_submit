import 'package:client_submit/trip_details/expenses_bill/expenses_bill_model.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_widgets.dart';
import '../../themes/themes.dart';

class ExpensesBillScreen extends StatefulWidget {
  const ExpensesBillScreen({super.key});

  @override
  State<ExpensesBillScreen> createState() => _ExpensesBillScreenState();
}

class _ExpensesBillScreenState extends State<ExpensesBillScreen> {
  TextEditingController controller = TextEditingController();
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
          child: CustomWidgets().appBarThreeButtons(),
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
                    shape: RoundedRectangleBorder(side: BorderSide(color: expensesList[index].color)),
                    child: SizedBox(
                      width: 400,
                      height: 131,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: expensesList[index].color)
                        ),
                        leading: SizedBox(child: FlutterLogo(size: 51,)),
                        title: Center(child: Text(expensesList[index].bill, style: TextStyle(fontSize: 18.57, fontWeight: FontWeight.w400),)),
                      ),
                    ),
                  ),
                );
              }),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12,),
            child: Card(
              shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFF4DB457))),
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
                          FlutterLogo(size: 200,),
                          SizedBox(height: 40,),
                          Row(
                            children: [
                              Text("Bill Name: "),
                              Container(
                                width: 200 ,child: TextField(
                                autofocus: true,
                                textCapitalization:
                                TextCapitalization.sentences,
                                controller: controller,
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
                                textCapitalization:
                                TextCapitalization.sentences,
                                controller: controller,
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
