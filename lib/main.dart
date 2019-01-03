import 'package:flutter/material.dart';
import 'mybox.dart';
import 'stateful.dart';
import 'statefulmy.dart';

void main() {
  runApp(MaterialApp(
    title: 'my first app',
    home: myclass(),
  ));
}

class myclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "my app",
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.yellow,
        ),
        body:
            // new mybox(
            //   color1: Colors.yellow,
            //   color2: Colors.blue,
            //   color3: Colors.red,
            //   color4: Colors.green,
            // ),
            //Counter()
            Center(child: InteractiveButton())
        //body: MyButton(),
        );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        padding: const EdgeInsets.all(50),
        child: Container(
          height: 36.0,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(5), bottom: Radius.circular(10)),
            color: Colors.lightGreen[500],
          ),
          child: Center(
            child: Text('Engage'),
          ),
        ),
      ),
    );
  }
}
