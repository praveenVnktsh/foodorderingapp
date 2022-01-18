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
  Color mainColor = Color(0xFF5b49aa);
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
          decoration: BoxDecoration(
              color: mainColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35))),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF6958b2).withAlpha(200),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(150),
                    )),
                height: 150,
                width: 150,
              ),
              Positioned(
                left: 300,
                bottom: 50,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF6958b2).withAlpha(200),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(150),
                      )),
                  height: 200,
                  width: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 100, 16, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 300,
                        child: Text(
                          "Order delicious food now!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintText: "Search for any food item",
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              color: mainColor,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 0.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular((30)))),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 0.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular((30)))))),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
