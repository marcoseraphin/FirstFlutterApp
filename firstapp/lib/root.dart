import 'package:firstapp/presentation/counter_app/counter_app_page.dart';
import 'package:firstapp/presentation/theme_animation/theme_animation_page.dart';
import 'package:firstapp/presentation/widget_examples_page.dart';
import 'package:flutter/material.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          WidgetsExamplesPage(),
          CounterAppPage(),
          ThemeAnimationPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Examples"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter"),
            BottomNavigationBarItem(
                icon: Icon(Icons.color_lens), label: "Theme")
          ]),
    );
  }
}
