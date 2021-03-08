import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:rentage/core/core.dart';
import 'package:rentage/core/widgets/bordered_button_widget.dart';
import 'package:quiver/async.dart';

const String KEY_PAGE_STORAGE_SEND_DATA_TAB = "KEY_PAGE_STORAGE_SEND_DATA_TAB";

class RentagePage extends StatefulWidget {
  final TabController tabController;

  RentagePage({Key key, this.tabController}) : super(key: key);

  @override
  _RentagePageState createState() {
    return _RentagePageState();
  }
}

class _RentagePageState extends State<RentagePage>
    with
        AutomaticKeepAliveClientMixin<RentagePage>,
        WidgetsBindingObserver,
        SingleTickerProviderStateMixin {


  /// Create a global key that uniquely identifies the Form widget
  /// and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  PageStorageKey _pageStorageViewKey =
      new PageStorageKey(KEY_PAGE_STORAGE_SEND_DATA_TAB);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();
  final TextEditingController _filenameController = TextEditingController();

  _RentagePageState();

  @override
  void initState() {
    super.initState();


    if (kIsWeb) {
      /// Calls to Platform.isIOS fails on web
      return;
    }


    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: context.customTheme.appColor,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      color: Colors.transparent,
                      height: 100,
                    ),

                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }



  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    // TODO: remove
    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        break;
    }
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  bool get wantKeepAlive => true;
}
