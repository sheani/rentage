import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rentage/core/core.dart';
import 'package:rentage/core/widgets/appbar_title_widget.dart';
import 'package:rentage/features/advanced/pages/advanced_page.dart';
import 'package:rentage/features/rentage/pages/rentage_page.dart';

const TAB_COUNT = 2;
const INITIAL_TAB_VALUE = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Future<bool> onWillPop() async => false;
  TabController _tabController;

  final _tabFontStyle = const TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'AvenirMediumOblique',
  );

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: TAB_COUNT, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        backgroundColor: context.customTheme.appColor,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            DefaultTabController(
              length: TAB_COUNT,
              child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  toolbarHeight: 60.0,
                  backgroundColor: context.customTheme.appColor,
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.white,
                    controller: _tabController,
                    tabs: [
                      Tab(
                        child: Text(
                          "TAB1",
                          style: _tabFontStyle,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "TAB2",
                          style: _tabFontStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                body: WillPopScope(
                  onWillPop: () => onWillCustomPop(this.context),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      RentagePage(tabController: _tabController),
                      AdvancedPage(tabController: _tabController),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> onWillCustomPop(BuildContext context) async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Are you sure?"),
            content: Text("Do you want to exit an App"),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text("No"),
              ),
              FlatButton(
                onPressed: () {
                  if (Theme.of(context).platform == TargetPlatform.iOS) {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  } else {
                    exit(0);
                  }
                },
                child: Text("Yes"),
              ),
            ],
          ),
        )) ??
        false;
  }
}
