import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<int> _colors = [100, 200, 300, 400, 500, 600, 700];
  MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: GridView.builder(
            itemCount: _colors.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5, 
            ),

            // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //   crossAxisSpacing: 5,
            //   mainAxisSpacing: 5, 
            //   maxCrossAxisExtent: 200,
            // ),

            itemBuilder: (BuildContext context,int index){
              return MyGrid(
                text: (index + 1).toString(), 
                color: Colors.amber[_colors[index]]
              );
            },
          ),
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