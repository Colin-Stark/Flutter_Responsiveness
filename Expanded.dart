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
      appBar: AppBar(
        title: Text('Expanded Widget Example'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text('2/7 Screen Height'),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
              child: Center(
                child: Text('4/7 Screen Height'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text('1/7 Screen Height'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
