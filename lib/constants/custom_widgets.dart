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
            onPressed: (){},
            child: Text("Passenger List", style: TextStyle(color: CustomColors.secondaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(145, 35),
              backgroundColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
                side: BorderSide(width: 1, color: CustomColors.primaryColor),
              ),
            ),
          ),
          SizedBox(width: 10,),
          ElevatedButton(
            onPressed: (){},
            child: Text("Expenses Bill", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(134, 35),
              backgroundColor: CustomColors.secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
                side: BorderSide(width: 1, color: CustomColors.primaryColor),
              ),
            ),
          ),
          SizedBox(width: 10,),
          ElevatedButton(
            onPressed: (){},
            child: Text("Check In", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(101, 35),
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
          VerticalDivider(),
        ],
      ),
      title: Text(''),
      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_outlined, size: 20,)),
    );
  }
}