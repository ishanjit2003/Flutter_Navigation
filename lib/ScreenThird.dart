import 'package:flutter/material.dart';
import 'package:flutter_props/home_screen.dart';
class ScreenThird extends StatefulWidget {
  static const String id="screen_third";
  const ScreenThird({super.key});

  @override
  State<ScreenThird> createState() => _ScreenThirdState();
}

class _ScreenThirdState extends State<ScreenThird> {
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
            Navigator.pushNamed(context, HomeScreen.id);
          },
              child: Text("Screen 3")),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context,index){
                  return  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/4420634/pexels-photo-4420634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: Text("home"),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
