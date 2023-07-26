import 'package:client_submit/constants/custom_widgets.dart';
import 'package:client_submit/trip_details/passengers_list/passengers_list_model.dart';
import 'package:flutter/material.dart';

class PassengersListScreen extends StatefulWidget {
  const PassengersListScreen({super.key});

  @override
  State<PassengersListScreen> createState() => _PassengersListScreenState();
}

class _PassengersListScreenState extends State<PassengersListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: browseList.length,
                itemBuilder: (context, index){
                  return CustomWidgets().passengerList(browseList[index].leadColor, browseList[index].isChecked, browseList[index].logoText, browseList[index].name);
                })
          ],
        ),
      ),
    );
  }
}