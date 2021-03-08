import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rentage/core/themes/themes.dart';

class ThemeObserver extends StatefulWidget {
  const ThemeObserver({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  _ThemeObserverState createState() => _ThemeObserverState();
}

class _ThemeObserverState extends State<ThemeObserver> {
  CustomTheme theme =
      Themes.getTheme(SchedulerBinding.instance.window.platformBrightness);

  @override
  void initState() {
    super.initState();
    final Window window = WidgetsBinding.instance.window;
    window.onPlatformBrightnessChanged = () {
      setState(() {
        theme = Themes.getTheme(window.platformBrightness);
      });
    };
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      theme: theme,
      child: widget.child,
    );
  }
}

class ThemeProvider extends InheritedWidget {
  const ThemeProvider({Key key, this.theme, Widget child})
      : super(key: key, child: child);

  final CustomTheme theme;

  static CustomTheme of(BuildContext context) {
    final ThemeProvider provider =
        context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    return provider.theme;
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return oldWidget.theme != theme;
  }
}
