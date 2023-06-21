import 'package:flutter/material.dart';
import 'package:flutter_project/StartupScreen.dart';
import 'package:flutter_project/provider/provider_chargers.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ChargerProvider(),
    child: MaterialApp(
      home: StartUp(),
    ) ,);
    /*MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ChargerProvider())
        ],
        child: Scaffold(
          body: StartUp(),
        ),
      ),
    );*/
  }
}

