
import 'dart:ui';

import 'package:client_submit/themes/themes.dart';
import 'package:flutter/material.dart';

class BrowseList {
  final String logoText;
  Color leadColor;
  final String name;
  final bool isChecked;

  BrowseList({required this.logoText, required this.leadColor, required this.name, required this.isChecked});


}
List<BrowseList> browseList = [
  BrowseList(logoText: 'A1', leadColor: CustomColors.listA1, name: ' Leigh King', isChecked: true),
  BrowseList(logoText: 'A2', leadColor: CustomColors.listA2, name: 'Dana Buchanan', isChecked: false),
  BrowseList(logoText: 'A3', leadColor: CustomColors.listA3, name: 'Jennie Pope', isChecked: true),
  BrowseList(logoText: 'B1', leadColor: CustomColors.listB1, name: 'Wilson Doyle', isChecked: true),
  BrowseList(logoText: 'B2', leadColor: CustomColors.listB2, name: 'Misty Rice', isChecked: true),
  BrowseList(logoText: 'B3', leadColor: CustomColors.listB3, name: 'Kristen Turner', isChecked: false),
  BrowseList(logoText: 'C1', leadColor: CustomColors.listC1, name: 'Shaun Simpson', isChecked: true),
  BrowseList(logoText: 'C2', leadColor: CustomColors.listC2, name: 'Pablo Barnes', isChecked: true),
  BrowseList(logoText: 'C3', leadColor: CustomColors.listC3, name: 'Heather Curry', isChecked: false)

];