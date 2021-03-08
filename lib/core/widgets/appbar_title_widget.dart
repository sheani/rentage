import 'package:flutter/material.dart';

class AppbarTitleWidget extends StatelessWidget {
  const AppbarTitleWidget({
    Key key,
    @required this.onTap,
    @required this.child,
    this.color,
    this.borderRadius,
  }) : super(key: key);
  final void Function() onTap;
  final Widget child;
  final Color color;
  final BorderRadiusGeometry borderRadius;

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