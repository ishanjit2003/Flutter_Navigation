import 'package:flutter/material.dart';
import 'package:flutter_props/ScreenThird.dart';
import 'package:flutter_props/ScreenTwo.dart';
import 'package:flutter_props/home_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context)=>HomeScreen(),
        ScreenTwo.id:(context)=>ScreenTwo(),
        ScreenThird.id:(context)=>ScreenThird(),


      },

      //home:HomeScreen(),

    );
  }
}

