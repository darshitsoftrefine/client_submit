

import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

import '../themes/themes.dart';

class CustomWidgets {


  //Passenger Expandable List Tile Widget
  Widget expandableTile(Color color){
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 22, right: 38, top: 25, bottom: 25),
          child: Column(
            children: [
              Table(
              children: const [
                TableRow(
                    children: [ TableCell(
                      child: Text("Booking Id", style: TextStyle(fontWeight: FontWeight.bold),),),
                      TableCell(verticalAlignment: TableCellVerticalAlignment.middle,child: Text(":")),
                      TableCell(child: Text("TBCP6MWJ7D"))
                    ]
                ),
                ]
                ),
                const SizedBox(height: 20,),
                Table(
                  children: const [
                    TableRow(
                  children: [
                  TableCell(
                  child: Text("Pick Up Stand", style: TextStyle(fontWeight: FontWeight.bold),),),
                  TableCell(child: Text(":")),
                  TableCell(child: Text("TS8 Raffles Town Club"))
                  ]
                  )
                  ],
                ),
              const SizedBox(height: 20,),
              Table(
                children: const [
                  TableRow(
                      children: [
                        TableCell(
                          child: Text("Drop Stand", style: TextStyle(fontWeight: FontWeight.bold),),),
                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,child: Text(":")),
                        TableCell(child: Text("Johor Bahru"))
                      ]
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Table(
                children: const [
                  TableRow(
                      children: [
                        TableCell(
                          child: Text("Id Type", style: TextStyle(fontWeight: FontWeight.bold),),),
                        TableCell(verticalAlignment: TableCellVerticalAlignment.middle,child: Text(":")),
                        TableCell(child: Text("Id Type"))
                      ]
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Table(
                children: const [
                  TableRow(
                      children: [
                        TableCell(
                          child: Text("NRIC/Passport Number", style: TextStyle(fontWeight: FontWeight.bold),),),
                        TableCell(child: Text(":")),
                        TableCell(child: Text("NRIC/Passport Number"))
                      ]
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Table(
                children: const [
                  TableRow(
                      children: [
                        TableCell(
                          child: Text("Mobile Number", style: TextStyle(fontWeight: FontWeight.bold),),),
                        TableCell(child: Text(":")),
                        TableCell(child: Text("+65 8764 1269"))
                      ]
                  )
                ],
              )
              ],
        ),
        ),
      ],
    );
  }


  // Passenger List View Widget
  Widget passengerList(Color leadColor, bool check, String logoText, String name){
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12),
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: leadColor),
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              //borderRadius: BorderRadius.circular(32),
              child: Container(
                decoration:  BoxDecoration(
                    border: Border(
                        left: BorderSide(color: leadColor, width: 2)
                    )
                ),
                child: RoundedExpansionTile(

                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: leadColor, width: 1)
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
                            child: Text(logoText, style: TextStyle(fontSize: 20, color: leadColor, fontWeight: FontWeight.w400))),
                        const SizedBox(width: 30,),
                        VerticalDivider(color: leadColor, width: 4, thickness: 1, endIndent: 0,)
                      ],
                    ),
                  ),
                  title: RichText(
                    text: TextSpan(
                      text: "Name: ",
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      children: [
                        TextSpan(
                          text: name,
                          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                        ),

                      ],
                    ),
                  ),
                  //Text("Name: "+ browseList[index].name, style: TextStyle(fontSize: 14),),
                  trailing: IconButton(
                    onPressed: (){}, icon: const Icon(Icons.arrow_drop_down_sharp, size: 35,),),

                  children: [
                    CustomWidgets().expandableTile(leadColor)
                  ],
                ),
              ),
            ),
          ),
          check ? Align(
            alignment: Alignment.topRight,
            child: SizedBox(
                width: 24,
                height: 24,
                child: CircleAvatar(
                  backgroundColor: CustomColors.onboardColor,
                  child:  const Icon(Icons.check),)),
          ): const SizedBox()
        ],
      ),
    );
  }


  //Expenses List Tile Widget
  Widget expensesList(Color color, String image, String bill){
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12,),
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: color),
            borderRadius: BorderRadius.circular(10)
        ),
        child: SizedBox(
          width: 400,
          height: 131,
          child: Row(
            children: [
              Image.asset(image, fit: BoxFit.fitWidth,),
              const SizedBox(width: 56,),
              Text(bill, style: const TextStyle(fontSize: 18.57, fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      ),
    );
  }


  //Alert Dialog Box in Expenses Screen Widget
  Widget expensesThirdTile(BuildContext context, TextEditingController billController, TextEditingController amountController){
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12,),
      child: Card(
        shape: RoundedRectangleBorder(side: const BorderSide(color: Color(0xFF4DB457)),
            borderRadius: BorderRadius.circular(10)
        ),
        child: SizedBox(
            width: 400,
            height: 131,
            child: IconButton(onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Color(0xFF2B3087), width: 2)
                    ),
                    title: const Center(child: Text('Upload Image')),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [

                          Image.asset('assets/images/bills.png'),

                          const SizedBox(height: 40,),
                          Row(
                            children: [
                              const Text("Bill Name: ", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
                              Expanded(
                                child: SizedBox(
                                  height: 29.8,
                                  width: 232.68 ,child: TextField(
                                  style: const TextStyle(fontSize: 10),
                                  autofocus: true,
                                  textCapitalization:
                                  TextCapitalization.sentences,
                                  controller: billController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade500,
                                          style: BorderStyle.solid),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey.shade500,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: 'Bill Name',
                                    contentPadding: EdgeInsets.only(top: 4, left: 10),
                                    hintStyle: TextStyle(
                                        color: Colors.grey.shade500, fontSize: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade500,
                                          style: BorderStyle.solid),
                                    ),
                                  ),
                                ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              const Text("Amount: ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),),
                              const SizedBox(width: 8,),
                              Expanded(
                                child: SizedBox(
                                  height: 29.8,
                                  width: 232.68 ,child: TextField(
                                  style: const TextStyle(fontSize: 10),
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  textCapitalization:
                                  TextCapitalization.sentences,
                                  controller: amountController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:  BorderSide(
                                          color: Colors.grey.shade500,
                                          style: BorderStyle.solid),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade500,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'Amount',
                                    contentPadding: EdgeInsets.only(top: 4, left: 10),
                                    hintStyle: TextStyle(
                                        color: Colors.grey.shade500, fontSize: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade500,
                                          style: BorderStyle.solid),
                                    ),
                                  ),
                                ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 40,),
                        ],
                      ),
                    ),
                    actions:<Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: (){
                              Navigator.pop(context);
                              billController.clear();
                              amountController.clear();
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(101, 28),
                              backgroundColor: CustomColors.secondaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(width: 1, color: CustomColors.primaryColor),
                              ),
                            ),
                            child: Text("Cancel", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
                          ),
                          const SizedBox(width: 10,),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.pop(context);
                              billController.clear();
                              amountController.clear();
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(101, 28),
                              backgroundColor: CustomColors.buttonColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(width: 1, color: CustomColors.buttonColor),
                              ),
                            ),
                            child: Text("Submit", style: TextStyle(color: CustomColors.secondaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
                          ),
                        ],
                      ),
                    ]
                ) ),
              icon: const Icon(Icons.add, color: Color(0xFF4DB457), size: 60,),)
        ),
      ),
    );
  }
}