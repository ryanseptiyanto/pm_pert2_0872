import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                MyBox(),
                MyBox(width: 100),
                MyBox(),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final double width;
  final double height;
  const MyBox({ 
    Key? key,
    this.width = 50,
    this.height = 50 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.red,
          width: 2,
        )
      ),
    );
  }
}