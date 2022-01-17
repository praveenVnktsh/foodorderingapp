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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// ctrl + .

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.ac_unit, color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.alarm, color: Colors.white),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
          height: 300,
          width: 600, // change it to fit the width of the mobile correctly.
          decoration: const BoxDecoration(
              color: Color(0xFF5b49aa),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35))),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 100, 64, 0),
            child: Column(
              children: [
                Text(
                  "Order delicious food now!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextField(
                      decoration:
                          InputDecoration(border: OutlineInputBorder())),
                ),
              ],
            ),
          )),
    );
  }
}
