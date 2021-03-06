import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*
This widget file will be reusable code for Daily Checkin Slider View class
 */

class DCSlider extends StatefulWidget {
  double sliderValue = 0.0;
  //DCSlider({this.sliderValue});

  @override
  _DCSLIDERS createState() => new _DCSLIDERS();
}

class _DCSLIDERS extends State{
  DCSlider mySlider = new DCSlider();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment(-.993,0),
          child: Text("0", textAlign: TextAlign.left, style: TextStyle(color: Colors.white)),
        ),
        Slider(
          value: mySlider.sliderValue,
          inactiveColor: Colors.black,
          activeColor: Colors.orange,
          min: 0.0,
          max: 100.0,
          onChanged: sliderStatus,
        ),
      Align(
          alignment: Alignment(.993,0),
          child: Text("100", textAlign: TextAlign.right, style: TextStyle(color: Colors.white))
        ),
      ],
    );
  }

  void sliderStatus(double input) {
    setState(() {
      print(mySlider.sliderValue);
      mySlider.sliderValue = input;
    });
  }
}