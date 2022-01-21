import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
// Raleway
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color mainColor = Color(0xFF5b49aa);
  Color textColor = Color(0xFF383645);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xfff6f6f6),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 300,
              width: 600, // change it to fit the width of the mobile correctly.
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              child: Stack(
                children: [
                  Positioned(
                    top: 100,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF6958b2).withAlpha(200),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(150),
                          )),
                      height: 150,
                      width: 150,
                    ),
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
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                hintText: "Search for any food item",
                                hintStyle: GoogleFonts.raleway(),
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: mainColor,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white.withAlpha(100),
                                        width: 0.0),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular((30)))),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.0),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular((30)))))),
                      ],
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Recommended",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: textColor)),
                // to comment : ctrl + /
                Text("View All",
                    style: GoogleFonts.raleway(
                        // fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: textColor)),
              ],
            ),
          ),
          Container(
              height: 265,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                              color: mainColor.withAlpha(5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    child: Image.network(
                                        "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2019/10/9/DV3016_masala-dosa_s4x3.jpg.rend.hgtvcom.616.462.suffix/1570635680579.jpeg"),
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 16,
                                    child: Container(
                                      height: 32,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 0, 8, 0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star_rounded,
                                              color: Colors.amber,
                                            ),
                                            Text(
                                              "4.7",
                                              style: GoogleFonts.raleway(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Masala Dosa",
                                          style: GoogleFonts.raleway(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          "₹ 50",
                                          style: GoogleFonts.raleway(
                                              // fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.add_box_rounded,
                                      color: mainColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    );
                  }))
        ],
      ),
    );
  }
}
