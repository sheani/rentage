import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentage/core/core.dart';
import 'package:rentage/core/widgets/bordered_button_widget.dart';

class TimerWidget extends StatefulWidget {
  TimerWidget({Key key}) : super(key: key);

  @override
  _TimerWidgetState createState() {
    return _TimerWidgetState();
  }
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          BorderedButtonWidget(
            onTap: () {
              _minusTime();
            },
            color: context.customTheme.negativeColor,
            styleCode: ButtonStyleCode.MINUS_BUTTON,
            typeCode: ButtonTypeCode.SQUARED_SMALL,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
            ),
            child: Text(
              "00:00",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BorderedButtonWidget(
            onTap: () {
              _plusTime();
            },
            color: context.customTheme.positiveColor,
            styleCode: ButtonStyleCode.PLUS_BUTTON,
            typeCode: ButtonTypeCode.SQUARED_SMALL,
          ),
        ],
      ),
    );
  }

  _plusTime() {}

  _minusTime() {}
}
