import 'package:flutter/material.dart';

class RgbSelectionSquare extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RgbState();
}

class RgbState extends State<RgbSelectionSquare> {
  double _red = 0;
  double _green = 0;
  double _blue = 0;

  _onChangeRed(double value) {
    setState(() {
      _red = value;
    });
  }

  _onChangeGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  _onChangeBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Square
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(
                      _red.round(), _green.round(), _blue.round(), 1)),
            ),
          ),

          //Red
          Row(
            children: [
              const Text("Red: "),
              Text(_red.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Slider(
              value: _red,
              min: 0,
              max: 255,
              divisions: 255,
              onChanged: _onChangeRed),

          //Green
          Row(
            children: [
              const Text("Green: "),
              Text(_green.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Slider(
              value: _green,
              min: 0,
              max: 255,
              divisions: 255,
              onChanged: _onChangeGreen),

          //Blue
          Row(
            children: [
              const Text("Blue: "),
              Text(_blue.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Slider(
              value: _blue,
              min: 0,
              max: 255,
              divisions: 255,
              onChanged: _onChangeBlue),
        ],
      ),
    );
  }
}
