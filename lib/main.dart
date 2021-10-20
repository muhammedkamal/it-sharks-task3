// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO:: change the app name
      title: "Your Name",
      theme: ThemeData(
        //appBarTheme: AppBarTheme(color: Colors.teal),
        primaryColor: Colors.blueGrey,
        accentColor: Colors.teal,
      ),
      home: Home(),
      //debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.brown,
                // TODO :: Add your photo to assets
                backgroundImage: AssetImage("assets/images/p.jpeg"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                //padding: const EdgeInsets.only(top: 10.0, right: 20),
                child: Text(
                  "Your Name",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Card(
                elevation: 5,
                color: Colors.blueGrey,
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 30,
                  ),
                  title: Text(
                    "Your Number",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
