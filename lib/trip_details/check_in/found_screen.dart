import 'package:client_submit/themes/themes.dart';
import 'package:flutter/material.dart';

class FoundScreen extends StatefulWidget {
  final String value;
  final Function() screenClose;
  const FoundScreen({super.key, required this.value, required this.screenClose});

  @override
  State<FoundScreen> createState() => _FoundScreenState();
}

class _FoundScreenState extends State<FoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.secondaryColor,
        leading: Builder(builder: (BuildContext context){
          return RotatedBox(quarterTurns: 0,
            child: IconButton(
                onPressed: () => Navigator.pop(context, false), icon: const Icon(Icons.arrow_back_rounded)
            ),
          );
        }),
        title: Text("Result", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20,),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Result"),
              const SizedBox(height: 20,),
              Text(widget.value)
            ],
          ),
        ),
      ),
    );
  }
}
