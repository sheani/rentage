import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentage/core/core.dart';
import 'package:rentage/core/widgets/bordered_button_widget.dart';
import 'package:rentage/core/widgets/intensity_circle_widget.dart';

enum IntensityTypeCode {
  ACTIVE,
  INACTIVE,
}

const INTENSITY_LIST_SIZE = 6;

class IntensityWidget extends StatefulWidget {
  IntensityWidget({Key key}) : super(key: key);

  @override
  _IntensityWidgetState createState() {
    return _IntensityWidgetState();
  }
}

class _IntensityWidgetState extends State<IntensityWidget> {
  // List<Widget> _intensityCircleList = new List();
  int _activeIntensityValue;
  int _intensityListSize;

  @override
  void initState() {
    super.initState();

    _activeIntensityValue = 1;
    _intensityListSize = 5;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        BorderedButtonWidget(
          onTap: () {
            _removeIntensity();
          },
          color: context.customTheme.negativeColor,
          styleCode: ButtonStyleCode.MINUS_BUTTON,
          typeCode: ButtonTypeCode.SQUARED_SMALL,
        ),
        Container(
          padding: EdgeInsets.only(left: 12, right: 12),
          height: 100.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: _intensityListSize,
            itemBuilder: (BuildContext context, int index) {
              // return _intensityCircleList[index];
              return IntensityCircleWidget(
                color: index <= _activeIntensityValue
                    ? context.customTheme.white
                    : Colors.transparent,
              );
            },
          ),
        ),
        BorderedButtonWidget(
          onTap: () {
            _addIntensity();
          },
          color: context.customTheme.positiveColor,
          styleCode: ButtonStyleCode.PLUS_BUTTON,
          typeCode: ButtonTypeCode.SQUARED_SMALL,
        ),
      ],
    );
  }

  _addIntensity() => {
        setState(() {
          _activeIntensityValue++;
        })
      };

  _removeIntensity() => {
        setState(() {
          _activeIntensityValue--;
        })
      };
}

typedef VoidCallback = void Function();
