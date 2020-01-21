import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'bmipage.dart';
// import 'package:smartGym/main.dart';
// import 'package:smartGym/LoginScreen.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculator createState() => new _BMICalculator();
}

class _BMICalculator extends State<BMICalculator>
    with TickerProviderStateMixin {
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BmiPage());
  }
}
