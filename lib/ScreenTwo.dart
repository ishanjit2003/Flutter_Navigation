import 'package:flutter/material.dart';
import 'package:flutter_props/ScreenThird.dart';
import 'package:flutter_props/home_screen.dart';
class ScreenTwo extends StatefulWidget {
  static const String id="scree_two";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Navigation Drawer")),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            //routing
            Navigator.pushNamed(context, HomeScreen.id);
            //Navigator.pop(context);
          }, child: Text("Screen 1")),
          
          Center(child: Text("welcome to 2 screen")),

          TextButton(onPressed: (){
            //routing
            Navigator.pushNamed(context, ScreenThird.id);
            //Navigator.pop(context);
          }, child: Text("Screen 3")),
        ],
      ),
    );
  }
}
