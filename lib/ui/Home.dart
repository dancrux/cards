import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom/CustomButton.dart';

class ScaffoldExample extends StatelessWidget {

  void _tapButton() => debugPrint("Alarm Tapped");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Test"),
        centerTitle: false,
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          IconButton(onPressed: () => debugPrint("email Tapped"), icon: Icon(Icons.email)),
          IconButton(onPressed: _tapButton, icon: Icon(Icons.access_alarm))
        ],
      ),
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.deepPurpleAccent,
         child: Icon(Icons.add),
         onPressed: () => debugPrint("Big Man"),
         focusColor: Colors.deepPurple,
       ),
       bottomNavigationBar: BottomNavigationBar(
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ("Home")),
           BottomNavigationBarItem(icon: Icon(Icons.message_rounded), label: ("Messages")),
           BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded), label: ("Account")),
         ],onTap: (int index) => debugPrint("tapped item: $index "),
       ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()
            // InkWell(
            //   child: Text("Click Me",
            //   style: TextStyle(fontSize: 23),),
            //   onTap: () => debugPrint("tapped"),
            // )
          ],
        ),
      ),
    );
  }
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  int _counter = 0;
  List sentences = [
    "This is a boy",
        " This is a family tree, This is an animal tissue ",
        "This is an ancient plant, This is Africa, This is a tall house",
        "This is a Big Place"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // constraints: BoxConstraints.expand(width: 250, height:180),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 220,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: Center(child: Text(sentences[_counter % sentences.length],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0
                      ),
                    )
                    )
                ),
        )

            ),
            Divider(thickness: 1.3),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: TextButton.icon(
                  onPressed: _showSentence,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    foregroundColor: MaterialStateProperty.all(Colors.white)
                  ),
                  icon: Icon(Icons.wb_sunny),
                  label: Text("Inspire",
                    style: TextStyle(
                    fontSize: 18.5,

                  ),
                    )),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showSentence() {
    setState(() {
      _counter += 1;
    });

  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurpleAccent,
      child: Center(
        child: Text(
          "Hello There",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 21.5,
            fontStyle: FontStyle.italic
          ),
        ),
      ),
    );
  }
}
