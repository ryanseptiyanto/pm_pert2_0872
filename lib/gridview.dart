import 'package:flutter/material.dart';

// class MyGridview extends StatelessWidget {
//   const MyGridview({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: GridView.count(
//           crossAxisCount: 2,
//           crossAxisSpacing: 5,
//           mainAxisSpacing: 5,
//           children: [
//             Container(
//               color: Colors.amber[100],
//               child: const Center(
//                 child: Text("1", style: TextStyle(fontSize: 20)),
//               ),
//             ),
//             Container(
//               color: Colors.amber[200],
//               child: const Center(
//                 child: Text("2", style: TextStyle(fontSize: 20)),
//               ),
//             ),
//             Container(
//               color: Colors.amber[300],
//               child: const Center(
//                 child: Text("3", style: TextStyle(fontSize: 20)),
//               ),
//             ),
//             Container(
//               color: Colors.amber[400],
//               child: const Center(
//                 child: Text("4", style: TextStyle(fontSize: 20)),
//               ),
//             ),
//             Container(
//               color: Colors.amber[500],
//               child: const Center(
//                 child: Text("5", style: TextStyle(fontSize: 20)),
//               ),
//             ),
//             Container(
//               color: Colors.amber[600],
//               child: const Center(
//                 child: Text("6", style: TextStyle(fontSize: 20)),
//               ),
//             ),
//             Container(
//               color: Colors.amber[700],
//               child: const Center(
//                 child: Text("7", style: TextStyle(fontSize: 20)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Extract Widget Container
class MyGridview extends StatelessWidget {
  // final List<int> _colors = [100,200,300,400,500,600,700];
  const MyGridview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ),

        // child: GridView.builder(
        //   itemCount: _colors.length,
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     crossAxisSpacing: 5,
        //     mainAxisSpacing: 5,
        //   ), 
        //   itemBuilder: (BuildContext context, int index){
        //     return MyGrid(
        //       text: (index + 1).toString(),
        //       color: Colors.amber[_colors[index]],
        //     );
        //   },
        // ),

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
    required this.color,
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