import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MiCard(),
    );
  }
}

class MiCard extends StatefulWidget {
  MiCard({Key key}) : super(key: key);

  @override
  _MiCardState createState() => _MiCardState();
}

class _MiCardState extends State<MiCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 25.0),
            width: double.infinity,
            height: 120.0,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "images/dhalogo.png",
                  height: 95.0,
                ),
                Text(
                  "      DHA\n    SUFFA\nUNIVERSITY",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  "images/dsulogo.png",
                  height: 95.0,
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 110.0,
            backgroundImage: AssetImage("images/mypic.PNG"),
          ),
          SizedBox(height: 20.0),
          Text(
            "Affan Murtaza",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 31.0,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            "CS181099",
            style: TextStyle(
              fontSize: 28.0,
            ),
          )
        ],
      ),
    );
  }
}
