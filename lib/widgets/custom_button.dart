import 'package:flutter/material.dart';
import 'package:training_calculator_app/widgets/input_section.dart';

class CustomButton extends StatelessWidget {
  String val;
  Function setNumber;
  Color textColor1;

  CustomButton(this.val, this.setNumber,
      [this.textColor1 = const Color.fromRGBO(244, 248, 248, 1)]);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: const BoxDecoration(color: Color.fromRGBO(39, 42, 51, 1)),
      alignment: Alignment.topCenter,
      child: OutlinedButton(
        onPressed: () => setNumber(val),
        child: Text(
          val,
          style: TextStyle(fontSize: 40, color: textColor1),
        ),
      ),
    );
  }
}
