import 'package:flutter/material.dart';
// import '../listview.dart';
// import '../gridview.dart';
// import '../row.dart';
// import '../column.dart';
// import '../expanded.dart';
// import '../flexible.dart';
// import '../stack.dart';
import '../align.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAlign(),
    );
  }
}