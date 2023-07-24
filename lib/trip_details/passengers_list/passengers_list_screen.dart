import 'package:client_submit/constants/custom_widgets.dart';
import 'package:client_submit/themes/themes.dart';
import 'package:client_submit/trip_details/check_in/check_in_qr.dart';
import 'package:client_submit/trip_details/expenses_bill/expenses_bill_screen.dart';
import 'package:client_submit/trip_details/passengers_list/passengers_list_model.dart';
import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

class PassengersListScreen extends StatefulWidget {
  const PassengersListScreen({super.key});

  @override
  State<PassengersListScreen> createState() => _PassengersListScreenState();
}

class _PassengersListScreenState extends State<PassengersListScreen> {

  var isClick = false;
  bool isExpanded = false;
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(145, 35),
                    backgroundColor: CustomColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: BorderSide(width: 1, color: CustomColors.primaryColor),
                    ),
                  ),
                  child: Text("Passenger List", style: TextStyle(color: CustomColors.secondaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
                ),
                const SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExpensesBillScreen()),
                      );
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(134, 35),
                    backgroundColor: CustomColors.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: BorderSide(width: 1, color: CustomColors.primaryColor),
                    ),
                  ),
                  child: Text("Expenses Bill", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
                ),
                const SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Scanner()),
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
          ),
      ),
    ),
      
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: browseList.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12),
                    child: Stack(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: browseList[index].leadColor),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            //borderRadius: BorderRadius.circular(32),
                            child: Container(
                              decoration:  BoxDecoration(
                                border: Border(
                                  left: BorderSide(color: browseList[index].leadColor, width: 2)
                                )
                              ),
                              child: RoundedExpansionTile(

                              // onExpansionChanged: (value){
                              //     isExpanded = value;
                              // },
                              //   border: Border(
                              //     left: BorderSide(
                              //
                              //     borderRadius: BorderRadius.circular(50),
                              //      width: 5,
                              //     color: Colors.red,
                              //     ),
                              //     ),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
                                  side: BorderSide(color: browseList[index].leadColor, width: 1)
                                ),

                                // Border(
                                //   left: BorderSide(color: !isExpanded ? browseList[index].leadColor : Colors.transparent, width: 4),
                                //
                                // ),

                                leading: SizedBox(
                                  width: 88,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: CustomColors.secondaryColor
                                        ),
                                          child: Text(browseList[index].logoText, style: TextStyle(fontSize: 20, color: browseList[index].leadColor, fontWeight: FontWeight.w400))),
                                      SizedBox(width: 30,),
                                      VerticalDivider(color: browseList[index].leadColor, width: 4, thickness: 1, endIndent: 0,)
                                    ],
                                  ),
                                ),
                                title: RichText(
                                    text: TextSpan(
                                    text: "Name: ",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                    children: [
                                    TextSpan(
                                    text: browseList[index].name,
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                                    ),

                  ],
                  ),
                  ),
                                  //Text("Name: "+ browseList[index].name, style: TextStyle(fontSize: 14),),
                                trailing:  isClick ? null: IconButton(
                                  onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp, size: 35,),),

                                children: [
                                 CustomWidgets().expandableTile(browseList[index].leadColor)
                                ],
                              ),
                            ),
                          ),
                        ),
                        browseList[index].isChecked ? Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 24,
                              height: 24,
                              child: CircleAvatar(
                            child:  Icon(Icons.check), backgroundColor: CustomColors.onboardColor,)),
                        ): SizedBox()
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}