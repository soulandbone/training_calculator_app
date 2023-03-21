import 'package:flutter/material.dart';
import './custom_button.dart';

class InputSection extends StatelessWidget {
  Function setNumber;

  InputSection(this.setNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(38, 45, 53, 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  'AC', setNumber, const Color.fromRGBO(108, 211, 192, 1)),
              CustomButton(
                  'S', setNumber, const Color.fromRGBO(108, 211, 192, 1)),
              CustomButton('', setNumber),
              CustomButton(
                  '/', setNumber, const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton('7', setNumber),
              CustomButton('8', setNumber),
              CustomButton('9', setNumber),
              CustomButton(
                  'x', setNumber, const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton('4', setNumber),
              CustomButton('5', setNumber),
              CustomButton('6', setNumber),
              CustomButton(
                  '-', setNumber, const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton('1', setNumber),
              CustomButton('2', setNumber),
              CustomButton('3', setNumber),
              CustomButton(
                  '+', setNumber, const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton('0', setNumber),
              CustomButton('.', setNumber),
              CustomButton('', setNumber),
              CustomButton(
                  '=', setNumber, const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
        ],
      ),
    );
  }
}
