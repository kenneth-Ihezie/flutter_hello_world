import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  _tapButton() {
    debugPrint("tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScaffoldExample"),
        centerTitle: false,
        backgroundColor: Colors.amberAccent.shade700,
        actions: [
          IconButton(
              onPressed: () => {debugPrint("email tapped")},
              icon: const Icon(Icons.email)),
          IconButton(onPressed: _tapButton, icon: const Icon(Icons.alarm))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {debugPrint("Clicked")},
        backgroundColor: Colors.lightBlue,
        child: const Icon(Icons.missed_video_call),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages")
        ],
        onTap: (int index) => debugPrint("Tapped at index $index"),
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello Again",
                style: TextStyle(color: Colors.white),
              ),

              //this wiget is mostly used to hanlde user
              //interactions
              const Padding(padding: EdgeInsets.all(8.0)),

              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(8.0)),
                child: InkWell(
                  child: const Text(
                    "Tap Me",
                    style: TextStyle(color: Colors.white, fontSize: 23.4),
                  ),
                  onTap: () => debugPrint("Tapped...."),
                ),
              ),

              const Padding(padding: EdgeInsets.all(8.0)),

              _customButton()
            ],
          )),
    );
  }

  Widget _customButton() {
    // more efficient than inkwell
    // Create an inner BuildContext so that the onTap methods
    // can refer to the Scaffold with Scaffold.of().
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          const snackBar = SnackBar(content: Text("Am a snackbar"));
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(8.0)),
          child: const Text("Button"),
        ),
      );
    });
  }
}
