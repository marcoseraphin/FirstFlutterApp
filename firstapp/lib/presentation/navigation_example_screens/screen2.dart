import 'package:firstapp/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Screen 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                text: "Navigate Back",
                color: Colors.yellow),
            const SizedBox(height: 20),
            CustomButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/screen1");
                  // Navigator.of(context).pushReplacementNamed("/screen1");
                },
                text: "Goto Screen 1",
                color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
