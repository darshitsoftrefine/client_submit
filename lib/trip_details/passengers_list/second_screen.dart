import 'package:client_submit/trip_details/passengers_list/passengers_list_model.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_widgets.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
                  return CustomWidgets().passenger2List(browseList[index].leadColor, browseList[index].isChecked, browseList[index].logoText, browseList[index].name);
                })
          ],
        ),
      ),
    );
  }
}
