import 'package:client_submit/trip_details/passengers_list/passengers_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(), // Wrap your app
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Client Submit',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: const PassengersListScreen(),
    );
  }
}