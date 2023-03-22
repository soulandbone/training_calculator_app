import 'package:flutter/material.dart';

class CustomButtonOperators extends StatelessWidget {
  String val;
  Function setOperation;
  Color textColor1;

  CustomButtonOperators(this.val, this.setOperation,
      [this.textColor1 = const Color.fromRGBO(244, 248, 248, 1)]);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: const BoxDecoration(color: Color.fromRGBO(39, 42, 51, 1)),
      alignment: Alignment.topCenter,
      child: OutlinedButton(
        onPressed: () => setOperation(val),
        child: Text(
          val,
          style: TextStyle(fontSize: 40, color: textColor1),
        ),
      ),
    );
  }
}
