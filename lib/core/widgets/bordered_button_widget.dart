import 'package:flutter/material.dart';
import 'package:rentage/core/core.dart';

enum ButtonStyleCode {
  TITLE_BUTTON,
  SAVE_BUTTON,
  PLAY_BUTTON,
  PAUSE_BUTTON,
  REFRESH_BUTTON,
  CANCEL_BUTTON,
  PLUS_BUTTON,
  MINUS_BUTTON,
  RHYTHM2_BUTTON,
  RHYTHM3_BUTTON,
  LOAD_CONFIG_BUTTON,
}

enum ButtonTypeCode {
  ROUNDED_NORMAL,
  ROUNDED_BIG,
  SQUARED_NORMAL,
  SQUARED_SMALL,
}

class BorderedButtonWidget extends StatelessWidget {
  const BorderedButtonWidget({
    Key key,
    @required this.onTap,
    this.child,
    this.color,
    this.borderRadius,
    this.styleCode,
    this.typeCode,
  }) : super(key: key);
  final VoidCallback onTap;
  final Widget child;
  final Color color;
  final double borderRadius;
  final ButtonStyleCode styleCode;
  final ButtonTypeCode typeCode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox.fromSize(
        size: _setDynamicSize(),
        child: Container(
          child: BorderedButtonContentWidget(
            styleCode: styleCode,
          ),
          decoration: _buildButtonShapeByCode(
            typeCode,
            context,
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildButtonShapeByCode(
    ButtonTypeCode bottomTypeCode,
    BuildContext context,
  ) {
    switch (bottomTypeCode) {
      case ButtonTypeCode.ROUNDED_NORMAL:
        {
          return BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: color ?? context.customTheme.neutralColor, width: 4.0),
          );
        }
        break;
      case ButtonTypeCode.ROUNDED_BIG:
        {
          return BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: color ?? context.customTheme.neutralColor, width: 4.0),
          );
        }
        break;
      case ButtonTypeCode.SQUARED_SMALL:
        {
          return BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
                color: color ?? context.customTheme.neutralColor, width: 1.6),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          );
        }
        break;
      case ButtonTypeCode.SQUARED_NORMAL:
        {
          return BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
                color: color ?? context.customTheme.neutralColor, width: 2.4),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          );
        }
        break;
      default:
        {
          return BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
                color: color ?? context.customTheme.neutralColor, width: 2.4),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          );
        }
        break;
    }
  }

  Size _setDynamicSize() {
    switch (typeCode) {
      case ButtonTypeCode.ROUNDED_NORMAL:
        {
          return Size(64, 64);
        }
        break;
      case ButtonTypeCode.ROUNDED_BIG:
        {
          return Size(80, 80);
        }
        break;
      case ButtonTypeCode.SQUARED_SMALL:
        {
          return Size(24, 24);
        }
        break;
      case ButtonTypeCode.SQUARED_NORMAL:
        {
          return Size(64, 64);
        }
        break;
      default:
        {
          return Size(64, 64);
        }
        break;
    }
  }
}

class BorderedButtonContentWidget extends StatelessWidget {
  const BorderedButtonContentWidget({
    Key key,
    this.styleCode,
  }) : super(key: key);
  final ButtonStyleCode styleCode;

  @override
  Widget build(BuildContext context) {
    switch (styleCode) {
      case ButtonStyleCode.TITLE_BUTTON:
        {
          return Text("data");
        }
        break;
      case ButtonStyleCode.PLAY_BUTTON:
        {
          return Icon(
            Icons.play_arrow,
            size: 44,
            color: context.customTheme.positiveColor,
          );
        }
        break;
      case ButtonStyleCode.PAUSE_BUTTON:
        {
          return Icon(
            Icons.pause,
            size: 44,
            color: context.customTheme.positiveColor,
          );
        }
        break;
      case ButtonStyleCode.SAVE_BUTTON:
        {
          return Icon(
            Icons.save,
            color: context.customTheme.white,
          );
        }
        break;
      case ButtonStyleCode.RHYTHM2_BUTTON:
        {
          return Icon(
            Icons.audiotrack,
            color: context.customTheme.white,
          );
        }
        break;
      case ButtonStyleCode.RHYTHM3_BUTTON:
        {
          return Icon(
            Icons.audiotrack,
            color: context.customTheme.white,
          );
        }
        break;
      case ButtonStyleCode.REFRESH_BUTTON:
        {
          return Icon(
            Icons.refresh_outlined,
            color: context.customTheme.white,
          );
        }
        break;
      case ButtonStyleCode.PLUS_BUTTON:
        {
          return Icon(
            Icons.add,
            size: 16.0,
            color: context.customTheme.white,
          );
        }
        break;
      case ButtonStyleCode.MINUS_BUTTON:
        {
          return Icon(
            Icons.remove,
            size: 16.0,
            color: context.customTheme.white,
          );
        }
        break;
      default:
        {
          return Icon(
            Icons.circle,
            color: context.customTheme.white,
          );
        }
        break;
    }
  }
}
