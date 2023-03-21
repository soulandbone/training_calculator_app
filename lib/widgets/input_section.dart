import 'package:flutter/material.dart';
import './custom_button.dart';

class InputSection extends StatelessWidget {
  const InputSection({super.key});

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
              CustomButton('AC', const Color.fromRGBO(108, 211, 192, 1)),
              CustomButton('S', const Color.fromRGBO(108, 211, 192, 1)),
              CustomButton(''),
              CustomButton('/', const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton('7'),
              CustomButton('8'),
              CustomButton('9'),
              CustomButton('x', const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton('4'),
              CustomButton('5'),
              CustomButton('6'),
              CustomButton('-', const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton('1'),
              CustomButton('2'),
              CustomButton('3'),
              CustomButton('+', const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton('0'),
              CustomButton('.'),
              CustomButton(''),
              CustomButton('=', const Color.fromRGBO(219, 127, 128, 1)),
            ],
          ),
        ],
      ),
    );
  }
}
