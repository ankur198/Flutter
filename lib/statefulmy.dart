import 'package:flutter/material.dart';

class InteractiveButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InteractiveButton();
  }
}

class _InteractiveButton extends State<InteractiveButton> {
  bool val = false;

  Icon setIcon() {
    if (val)
      return Icon(Icons.event_available);
    else
      return Icon(Icons.event_busy);
  }

  void changeVal() {
    val = !val;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(50, 175, 50, 50),
      child: Column(
        children: <Widget>[
          Center(
            child: Text("Tap me",
                style: TextStyle(
                  fontSize: 50,
                )),
          ),
          IconButton(
            iconSize: 50,
            icon: setIcon(),
            onPressed: () {
              changeVal();
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
