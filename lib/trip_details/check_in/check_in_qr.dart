import 'package:client_submit/themes/themes.dart';
import 'package:client_submit/trip_details/check_in/QRScanner.dart';
import 'package:client_submit/trip_details/check_in/found_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

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
      body: Stack(
        children: [

          MobileScanner(
            allowDuplicates: false,
            controller: cameraController,
            onDetect: _foundBarcode,),
          QRScannerOverlay(overlayColour: Colors.white.withOpacity(0.5)),
           Positioned(
             bottom: 100,
               left: 140,
               right: 50,
               top: 100,
               child: Text("Scan QR Code", style: CustomTheme.lightTheme().textTheme.displayLarge,)),
        ],
      )
    );
  }
  void _foundBarcode(Barcode barcode, MobileScannerArguments? args){
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
