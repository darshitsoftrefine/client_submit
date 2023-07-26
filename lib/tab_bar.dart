import 'package:client_submit/themes/themes.dart';
import 'package:client_submit/trip_details/check_in/check_in_qr.dart';
import 'package:client_submit/trip_details/expenses_bill/expenses_bill_screen.dart';
import 'package:client_submit/trip_details/passengers_list/passengers_list_screen.dart';
import 'package:flutter/material.dart';

class Tab_Bar extends StatelessWidget {
  const Tab_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: CustomColors.secondaryColor,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new, color: CustomColors.primaryColor,),),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Text("Trip Details", style: CustomTheme.lightTheme().textTheme.titleLarge,),
            ),
            centerTitle: true,
          bottom: TabBar(
              padding: EdgeInsets.only(left: 2, right: 2, top: 10, bottom: 10),
              unselectedLabelColor: CustomColors.primaryColor,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: CustomColors.primaryColor),
              tabs: [
                Tab(text: "Passenger List",),
                Tab(text: "Expenses Bill",),
                Tab(text: "Check-In",)
              ]),
        ),

        body: const TabBarView(
          children: [
            PassengersListScreen(),
            ExpensesBillScreen(),
            Scanner(),
          ],
        ),
      ),
    );
  }
}
