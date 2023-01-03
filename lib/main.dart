import 'package:flutter/material.dart';
import 'screen/box.dart';

import 'screen/chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Report(),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 242, 239, 247),
            child: Column(
              children: [
                Row(
                  children: [Expanded(child: Defaul())],
                ),
                Row(
                  children: [
                    Expanded(child: BoxWidget()),
                    Expanded(child: Chart())
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: chart2()),
                    Expanded(child: NewU())
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Bang()),
                    Expanded(child: Recent())
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: chart3()),
                    Expanded(child: Report())
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Chart4()),
                    Expanded(child: box2())
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
