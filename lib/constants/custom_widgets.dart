import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../themes/themes.dart';

class CustomWidgets {

  Widget appBarThreeButtons(){
    return Expanded(
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
    );
  }

  Widget passengerListView(){
    return ListTile(
      leading: Row(
        children: [
          Container(

          ),
          const VerticalDivider(),
        ],
      ),
      title: const Text(''),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_drop_down_outlined, size: 20,)),
    );
  }

  Widget expandableTile(Color color){
    return Column(
      children: [
        Divider(color: color, thickness: 1.5),
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
}