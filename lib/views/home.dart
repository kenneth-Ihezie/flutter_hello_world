import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //using material widget
    return const Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          "Hello Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 23.4,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
      ),
    );
    // return const Center(
    //   child: Text(
    //     "Hello Flutter",
    //     textDirection: TextDirection.ltr,
    //   ),
    // );
  }
}