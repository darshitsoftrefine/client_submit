import 'package:client_submit/constants/custom_widgets.dart';
import 'package:client_submit/themes/themes.dart';
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            child: RoundedExpansionTile(
                            // onExpansionChanged: (value){
                            //     isExpanded = value;
                            // },
                            //   border: Border(
                            //     left: BorderSide(
                            //     // Set the border radius to 50%.
                            //     // borderRadius: BorderRadius.circular(50),
                            //     // width: 5,
                            //     // color: Colors.red,
                            //     ),
                            //     ),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
                                side: BorderSide(color: browseList[index].leadColor, width: 3)
                              ),

                              // Border(
                              //   left: BorderSide(color: !isExpanded ? browseList[index].leadColor : Colors.transparent, width: 4),
                              //
                              // ),

                              leading: SizedBox(
                                width: 88,
                                height: 70,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: CustomColors.secondaryColor
                                      ),
                                        child: Text(browseList[index].logoText, style: TextStyle(fontSize: 20, color: browseList[index].leadColor, fontWeight: FontWeight.w400))),
                                    SizedBox(width: 20,),
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