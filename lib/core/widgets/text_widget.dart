import 'package:flutter/material.dart';

enum TextStyleCode {
  none,
  running,
  stopped,
  paused
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key key,
    this.styleCode,
  }) : super(key: key);
  final TextStyleCode styleCode;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            bottom: 2.0,
          ),
          child: Text(
            "Methronome",
            style: TextStyle(
              backgroundColor: Colors.white,
              color: Colors.black,
              fontFamily: 'AvenirNextCondensed',
            ),
          ),
        ),
      ),
    );
  }
}