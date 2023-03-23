import 'package:flutter/material.dart';
import 'package:training_calculator_app/widgets/input_section.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String displayDown = '0';

  String displayUp = '';
  //double firstNumber = 0.0;

  var operator = false;
  var pressedOperators = [];

  var operators = ['+', '-', 'x', '/'];
  var numbers = [];

  void setNumber(String val) {
    setState(() {
      if (!operator) {
        if (int.parse(val) != 0 && int.parse(displayDown) == 0) {
          displayDown = val;
        } else {
          displayDown = '$displayDown$val';
        }
      } else {
        if (int.parse(displayDown) == numbers.last) {
          displayDown = val;
        } else {
          displayDown = '$displayDown$val';
        }
      }
    });
  }

  void setOperation(String val) {
    setState(() {
      if (operators.contains(val)) {
        if (!operator) {
          // see how to change this logic to continue making operations
          numbers.add(double.tryParse(displayDown)!);
          displayUp = '${numbers.last} $val';
          operator = !operator;
          //pressedOperators.removeLast(); // new line added to test
          pressedOperators.add(val);
          print(pressedOperators);
        }
      } else if (val == '=') {
        displayUp = '$displayUp $displayDown $val';
        operator = false;
        switch (pressedOperators.last) {
          case '+':
            {
              displayDown = (numbers.last + int.parse(displayDown)).toString();
            }
            break;
          case '-':
            {
              displayDown = (numbers.last - int.parse(displayDown)).toString();
            }
            break;
          case 'x':
            {
              displayDown = (numbers.last * int.parse(displayDown)).toString();
            }
            break;
          case '/':
            {
              displayDown = (numbers.last / int.parse(displayDown)).toString();
            }
            break;
        }
      }
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
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(25),
                    child: Text(
                      displayUp,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(25),
                    child: Text(
                      displayDown,
                      style: const TextStyle(fontSize: 38, color: Colors.white),
                    ),
                  ),
                ],
              )),
          SizedBox(
              height: usableHeight * 0.7,
              child: InputSection(setNumber, setOperation))
        ],
      ),
    );
  }
}
