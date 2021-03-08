import 'package:flutter/material.dart';
import 'package:rentage/core/core.dart';

class DropdownListViewWidget extends StatefulWidget {
  DropdownListViewWidget({Key key}) : super(key: key);

  @override
  _DropdownListViewWidgetState createState() => _DropdownListViewWidgetState();
}

class _DropdownListViewWidgetState extends State<DropdownListViewWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: context.customTheme.neutralColor),
      underline: Container(
        height: 2,
        color: context.customTheme.positiveColor,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}