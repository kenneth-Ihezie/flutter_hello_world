import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FIeld extends StatefulWidget {
  const FIeld({Key? key}) : super(key: key);

  @override
  State<FIeld> createState() => _FIeldState();
}

class _FIeldState extends State<FIeld> {
  final _fields = ["Android", "Ios", "Flutter", "Reactjs", "Unity", "Solidity",
    "Tensorflowjs", "nestjs"];

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Field App"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              width: 350,
                height: 200,
                margin: const EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(14.5)
                ),
                child: Center(child: Text(_fields[_index % _fields.length], style: const TextStyle(
                  color: Colors.white
                ),))),

            const Divider(thickness: 1.2,),

            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                onPressed: _showQuote,
                icon: const Icon(Icons.wb_sunny, color: Colors.white,),
                label: const Text("Inspire me", style: TextStyle(
                  color: Colors.white
                ),),
                color: Colors.greenAccent.shade700,
              ),
            ),


            const Spacer()
          ],
        ),
      ),
    );
  }

  _showQuote(){
     setState(() {
       _index++;
     });
  }
}
