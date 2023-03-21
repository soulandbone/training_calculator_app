import 'package:flutter/material.dart';
import 'package:training_calculator_app/widgets/input_section.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String displayedNumber = '0';

  void setNumber(String val) {
    setState(() {
      displayedNumber = val;
      print('Button was pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    double appBarHeight = MediaQuery.of(context).padding.top + kToolbarHeight;
    double usableHeight = MediaQuery.of(context).size.height - appBarHeight;

    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Column(
        children: [
          Container(
              alignment: Alignment.bottomLeft,
              height: usableHeight * 0.3,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(37, 41, 47, 1)),
              child: Container(
                margin: const EdgeInsets.all(25),
                child: Text(
                  displayedNumber,
                  style: const TextStyle(fontSize: 38, color: Colors.white),
                ),
              )),
          SizedBox(height: usableHeight * 0.7, child: InputSection(setNumber))
        ],
      ),
    );
  }
}
