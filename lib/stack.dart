import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            // alignment: const Alignment(-1, 1),
            children: [
              Container(width: 300, height: 300, color: Colors.red,
              ),
              Container(width: 150, height: 150, color: Colors.green,
              ),
              Container(width: 80, height: 80, color: Colors.blue,
              ),
            ],
          )
        )
      ),
    );
  }
}