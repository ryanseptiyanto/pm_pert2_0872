import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1.33,
            children: [
              MyGrid(text: "1", color: Colors.amber[100]),
              MyGrid(text: "2", color: Colors.amber[200]),
              MyGrid(text: "3", color: Colors.amber[300]),
              MyGrid(text: "4", color: Colors.amber[400]),
              MyGrid(text: "5", color: Colors.amber[500]),
              MyGrid(text: "6", color: Colors.amber[600]),
              MyGrid(text: "7", color: Colors.amber[700]),
            ],
          )
        ),
      ),
    );
  }
}

class MyGrid extends StatelessWidget {
  final String text;
  final Color? color;
  const MyGrid({
    Key? key,
    required this.text,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(text, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}