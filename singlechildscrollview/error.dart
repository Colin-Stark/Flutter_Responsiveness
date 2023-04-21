import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 2 / 5,
            color: Colors.red,
            child: Center(
              child: Text('2/5 Screen Height'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 3 / 5,
            color: Colors.green,
            child: Center(
              child: Text('3/5 Screen Height'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 2 / 5,
            color: Colors.blue,
            child: Center(
              child: Text('2/5 Screen Height'),
            ),
          ),
        ],
      ),
    );
  }
}
