import 'package:flutter/material.dart';
import 'package:rentage/core/core.dart';

class IntensityCircleWidget extends StatelessWidget {
  const IntensityCircleWidget({
    Key key,
    this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(24, 24),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? context.customTheme.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: context.customTheme.neutralColor,
            width: 2.4,
          ),
        ),
      ),
    );
  }
}
