import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  MyListView({ Key? key }) : super(key: key);
  final List<int> colorCodes = <int>[700, 600, 500, 400, 300, 200, 100];

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

          // child: ListView.builder(
          //   itemCount: colorCodes.length,
          //   itemBuilder: (BuildContext context, int index){
          //     return Container(
          //       height: 100,
          //       margin: const EdgeInsets.all(5),
          //       color: Colors.amber[colorCodes[index]],
          //     );
          //   },
          // ),

          // child: ListView.separated(
          //   padding: const EdgeInsets.all(15),
          //   separatorBuilder: (BuildContext context, int index){
          //     return const Divider();
          //   },
          //   itemCount: colorCodes.length,
          //   itemBuilder: (BuildContext context, int index){
          //     return Container(
          //       height: 100,
          //       margin: const EdgeInsets.all(5),
          //       color: Colors.amber[colorCodes[index]],
          //     );
          //   },
          // ),

        ),
      ),
    );
  }
}