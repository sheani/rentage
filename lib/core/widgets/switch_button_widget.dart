import 'package:flutter/material.dart';
import 'package:rentage/core/core.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({
    Key key,
    this.color,
    @required this.onTap,
  }) : super(key: key);
  final Color color;
  final VoidCallback onTap;

  @override
  _SwitchButtonWidgetState createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
      activeTrackColor: context.customTheme.neutralColor,
      activeColor: context.customTheme.positiveColor,
    );
  }
}
