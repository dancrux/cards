import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Hey There"),
          backgroundColor: Colors.deepPurpleAccent,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },

      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(7.0)
        ),
        child: Text(" Button"),
      ),
    );
  }
}