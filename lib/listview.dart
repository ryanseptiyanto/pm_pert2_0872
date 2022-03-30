import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                color: Colors.amber[700],
                height: 200,
              ),
              Container(
                color: Colors.amber[500],
                height: 200,
              ),
              Container(
                color: Colors.amber[100],
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}