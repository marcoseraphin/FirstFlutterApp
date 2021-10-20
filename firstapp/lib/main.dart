import 'package:firstapp/application/theme_service.dart';
import 'package:firstapp/presentation/navigation_example_screens/screen1.dart';
import 'package:firstapp/presentation/navigation_example_screens/screen2.dart';
import 'package:firstapp/root.dart';
import 'package:firstapp/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeService(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          routes: <String, WidgetBuilder>{
            "/root": (BuildContext context) => const RootWidget(),
            "/screen1": (BuildContext context) => const Screen1(),
            "/screen2": (BuildContext context) => const Screen2(),
          },
          home: const RootWidget());
    });
  }
}
