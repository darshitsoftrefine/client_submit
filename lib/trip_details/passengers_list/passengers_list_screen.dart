import 'package:client_submit/constants/custom_widgets.dart';
import 'package:client_submit/themes/themes.dart';
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
      
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: browseList.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12),
                    child: Stack(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: browseList[index].leadColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ExpansionTile(
                            shape: Border(
                              left: BorderSide(color: browseList[index].leadColor, width: 6),
                            ),

                            leading: SizedBox(
                              width: 88,
                              height: 50,
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: CustomColors.secondaryColor
                                    ),
                                      child: Text(browseList[index].logoText, style: TextStyle(fontSize: 20, color: browseList[index].leadColor, fontWeight: FontWeight.w400))),
                                  SizedBox(width: 20,),
                                  VerticalDivider(color: browseList[index].leadColor, width: 2, thickness: 1,)
                                ],
                              ),
                            ),
                            title: Text("Name: "+ browseList[index].name, style: TextStyle(fontSize: 14),),
                            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp, size: 35,),),
                          ),
                        ),
                        browseList[index].isChecked ? Positioned(
                          left: 355,
                          bottom: 40,
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