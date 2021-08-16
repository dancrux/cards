import 'package:flutter/material.dart';

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
