import 'package:flutter/material.dart';


class mybox extends StatelessWidget {
  mybox({this.color1, this.color2, this.color3, this.color4});

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  void asd()
  {
    print("sdgg");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){asd();},
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(),
          ),
          new mycol(
            colorb1: color1,
            colorb2: color2,
          ),
          new mycol(
            colorb1: color3,
            colorb2: color4,
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}

class mycol extends StatelessWidget {
  final Color colorb1;
  final Color colorb2;
  mycol({this.colorb1, this.colorb2});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(),
        ),
        mybox1(
          color: colorb1,
        ),
        mybox1(
          color: colorb2,
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}

class mybox1 extends StatelessWidget {
  mybox1({this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: this.color,
      width: 50,
      height: 50,
    );
  }
}

