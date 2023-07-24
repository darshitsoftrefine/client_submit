import 'package:client_submit/trip_details/check_in/QRScanner.dart';
import 'package:client_submit/trip_details/check_in/found_screen.dart';
import 'package:client_submit/trip_details/expenses_bill/expenses_bill_screen.dart';
import 'package:client_submit/trip_details/passengers_list/passengers_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../constants/custom_widgets.dart';
import '../../themes/themes.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {

  MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;

  @override
  void initState() {
    // TODO: implement initState
    //this._screenWasClosed
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PassengersListScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(145, 35),
                    backgroundColor: CustomColors.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: BorderSide(width: 1, color: CustomColors.primaryColor),
                    ),
                  ),
                  child: Text("Passenger List", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
                ),
                const SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExpensesBillScreen()),
                    );
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
                  child: Text("Check In", style: TextStyle(color: CustomColors.secondaryColor, fontWeight: FontWeight.w400, fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(101, 35),
                    backgroundColor: CustomColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: BorderSide(width: 1, color: CustomColors.primaryColor),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
      body: Stack(
        children: [
          Text("Scan QR Code"),
          MobileScanner(
            allowDuplicates: false,
            controller: cameraController,
            onDetect: _foundBarcode,),
          QRScannerOverlay(overlayColour: Colors.white.withOpacity(0.5))
        ],
      )
    );
  }
  void _foundBarcode(Barcode barcode, MobileScannerArguments? args){
    print(barcode);
    if(!_screenOpened){
      final String code = barcode.rawValue ?? "___";
      _screenOpened = false;
      Navigator.push(context, MaterialPageRoute(builder: (context) => FoundScreen(value: code, screenClose: _screenWasClosed))
      ).then((value) => print(value));
    }
  }

  void _screenWasClosed(){
    _screenOpened = false;
  }
}
