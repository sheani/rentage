import 'package:flutter/material.dart';
import 'package:rentage/core/core.dart';

class SliderWidget extends StatefulWidget {
  final Function(int) onValueChange;
  final int value;

  const SliderWidget({
    Key key,
    this.onValueChange,
    this.value,
  }) : super(key: key);

  @override
  SiderWidgetState createState() => SiderWidgetState();
}

class SiderWidgetState extends State<SliderWidget> {
  int valueHolder = 20;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.15,
          child: RotatedBox(
            quarterTurns: 3,
            child: Slider(
              value: valueHolder.toDouble(),
              min: 1,
              max: 125,
              divisions: 125,
              activeColor: context.customTheme.neutralColor,
              inactiveColor: context.customTheme.white,
              label: '${valueHolder.round()}',
              onChanged: (double newValue) {
                setState(() {
                  valueHolder = newValue.round();
                  widget.onValueChange(valueHolder);
                });
              },
              semanticFormatterCallback: (double newValue) {
                return '${newValue.round()}';
              },
            ),
          ),
        ),
      ),
    );
  }
}
