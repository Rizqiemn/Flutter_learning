import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Belajar Flutter",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.account_circle),
          Icon(Icons.group),
        ],
      ),
      body: Center(
        child: Container(
          height: 100,
          width: double.infinity,
          color: Colors.grey[300],
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconWithLabel(
              icon1: Icons.call,
              text: "CALL",
              color: Colors.black,
            ),
            IconWithLabel(
              icon1: Icons.navigation,
              text: "Route",
              color: Colors.yellow,
            ),
            IconWithLabel(
              icon1: Icons.share,
              text: "Share",
              color: Colors.cyan,
            ),
          ]),
        ),
      ),
    );
  }
}

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    Key? key,
    required this.icon1,
    required this.text,
    required this.color,
  }) : super(key: key);

  final IconData icon1;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon1,
          size: 50,
          color: color,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 25, color: color, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}


/*
    Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.navigation_rounded,
                  size: 50,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Route",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.share,
                  size: 50,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Share",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            */