import 'package:flutter/material.dart';
import 'package:flutter_props/ScreenThird.dart';
import 'package:flutter_props/ScreenTwo.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Navigation Drawer")),
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:  [
              //DrawerHeader(child: Text("ishanjit"))
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.teal),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/4420634/pexels-photo-4420634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  accountName: Text("ishanjit"),
                  accountEmail: Text("ishanjit2003@gmail.com")),
              ListTile(

                leading: Icon(Icons.icecream),
                title: Text("icecreame"),
                onTap: (){
                  Navigator.pushNamed(context, ScreenThird.id);
                },
              ),
              const ListTile(
                leading: Icon(Icons.holiday_village),
                title: Text("home"),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  //routing
                  Navigator.pushNamed(context, ScreenTwo.id);
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
                },
                child: Text("Screen 2")),
            Center(child: Text("welcome to home screen")),
          ],
        ));
  }
}
