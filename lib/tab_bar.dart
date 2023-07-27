import 'package:client_submit/themes/themes.dart';
import 'package:client_submit/trip_details/check_in/check_in_qr.dart';
import 'package:client_submit/trip_details/expenses_bill/expenses_bill_screen.dart';
import 'package:client_submit/trip_details/passengers_list/second_screen.dart';
import 'package:flutter/material.dart';

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({super.key});

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(milliseconds: 0),
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
              labelPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1),
              padding: const EdgeInsets.only(left: 2, right: 2, top: 10, bottom: 10),
              unselectedLabelColor: CustomColors.primaryColor,
              indicatorColor: CustomColors.secondaryColor,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: CustomColors.primaryColor),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: CustomColors.primaryColor, width: 1)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Passengers List"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: CustomColors.primaryColor, width: 1)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Expenses Bill"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: CustomColors.primaryColor, width: 1)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Check-In"),
                    ),
                  ),
                ),
              ]),
        ),

        body: const TabBarView(
          children: [
            SecondScreen(),
            ExpensesBillScreen(),
            Scanner(),
          ],
        ),
      ),
    );
  }
}