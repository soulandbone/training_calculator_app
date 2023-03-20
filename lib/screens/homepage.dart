import 'package:flutter/material.dart';
import 'package:training_calculator_app/widgets/input_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Height of device is $height')),
      body: Column(
        children: [
          Container(
              height: height * 0.3,
              decoration: const BoxDecoration(color: Colors.lime)),
          Container(height: height * 0.5, child: const InputSection())
        ],
      ),
    );
  }
}
