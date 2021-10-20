import 'package:firstapp/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Screen 1",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: CustomButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            text: "Navigate Back",
            color: Colors.green),
      ),
    );
  }
}
