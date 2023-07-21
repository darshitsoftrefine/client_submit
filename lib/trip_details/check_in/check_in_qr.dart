// import 'package:client_submit/trip_details/check_in/QRScanner.dart';
// import 'package:client_submit/trip_details/check_in/found_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';
//
// import '../../constants/custom_widgets.dart';
// import '../../themes/themes.dart';
//
// class Scanner extends StatefulWidget {
//   const Scanner({super.key});
//
//   @override
//   State<Scanner> createState() => _ScannerState();
// }
//
// class _ScannerState extends State<Scanner> {
//
//   MobileScannerController cameraController = MobileScannerController();
//   bool _screenOpened = false;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     //this._screenWasClosed
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: CustomColors.secondaryColor,
//         elevation: 0.0,
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 2.0),
//           child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new, color: CustomColors.primaryColor,),),
//         ),
//         title: Padding(
//           padding: const EdgeInsets.only(top: 9.0),
//           child: Text("Trip Details", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w600),),
//         ),
//         centerTitle: true,
//         bottom: PreferredSize(
//           preferredSize:  const Size.fromHeight(60),
//           child: CustomWidgets().appBarThreeButtons(),
//         ),
//       ),
//       body: Stack(
//         children: [
//           MobileScanner(
//             allowDuplicates: false,
//             controller: cameraController,
//             onDetect: _foundBarcode(),),
//           QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5))
//         ],
//       )
//     );
//   }
//   void _foundBarcode(Barcode barcode, MobileScannerArguments args){
//     print(barcode);
//     if(!_screenOpened){
//       final String code = barcode.rawValue ?? "___";
//       _screenOpened = false;
//       Navigator.push(context, MaterialPageRoute(builder: (context) => FoundScreen(value: code, screenClose: _screenWasClosed))
//       ).then((value) => print(value));
//     }
//   }
//
//   void _screenWasClosed(){
//     _screenOpened = false;
//   }
// }
