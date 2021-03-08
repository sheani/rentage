import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:rentage/core/core.dart';

const String KEY_PAGE_STORAGE_SEND_DATA_TAB = "KEY_PAGE_STORAGE_SEND_DATA_TAB";

class AdvancedPage extends StatefulWidget {
  final TabController tabController;

  AdvancedPage({Key key, this.tabController}) : super(key: key);

  @override
  _AdvancedPageState createState() {
    return _AdvancedPageState();
  }
}

class _AdvancedPageState extends State<AdvancedPage>
    with
        AutomaticKeepAliveClientMixin<AdvancedPage>,
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

  _AdvancedPageState();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: context.customTheme.appColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Theme",
                        style: TextStyle(
                          fontSize: 20,
                          color: context.customTheme.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      DropdownListViewWidget(),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                          fontSize: 20,
                          color: context.customTheme.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      DropdownListViewWidget(),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rhythm vibration",
                        style: TextStyle(
                          fontSize: 20,
                          color: context.customTheme.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SwitchButtonWidget(),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cycle",
                        style: TextStyle(
                          fontSize: 20,
                          color: context.customTheme.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SwitchButtonWidget(),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Timer",
                        style: TextStyle(
                          fontSize: 20,
                          color: context.customTheme.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SwitchButtonWidget(),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderedButtonWidget(
                  onTap: () {
                    _loadConfig();
                  },
                  color: context.customTheme.neutralColor,
                  styleCode: ButtonStyleCode.LOAD_CONFIG_BUTTON,
                  typeCode: ButtonTypeCode.ROUNDED_NORMAL,
                ),
                BorderedButtonWidget(
                  onTap: () {
                    _saveConfig();
                  },
                  color: context.customTheme.positiveColor,
                  styleCode: ButtonStyleCode.SAVE_BUTTON,
                  typeCode: ButtonTypeCode.ROUNDED_NORMAL,
                ),
                BorderedButtonWidget(
                  onTap: () {
                    _refreshConfig();
                  },
                  color: context.customTheme.neutralColor,
                  styleCode: ButtonStyleCode.REFRESH_BUTTON,
                  typeCode: ButtonTypeCode.ROUNDED_NORMAL,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNameInputField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        cursorColor: Colors.pinkAccent,
        style: setMainAppTextStyle(),
        controller: _nameController,
        decoration: setAppFormDecorationWithLabel("HINT HINT HINT"),
        validator: (value) {
          if (value.isEmpty) {
            return "Ошибка валидации";
          }
          return null;
        },
      ),
    );
  }

  void _clearCurrentForm() {
    _nameController.clear();
    _pinController.clear();
    _filenameController.clear();
  }

  TextStyle setMainAppTextStyle() {
    return TextStyle(
      fontFamily: 'AvenirMediumOblique',
      fontSize: 16.0,
      color: Colors.white,
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

  void _loadConfig() {}

  void _saveConfig() {}

  void _refreshConfig() {}
}
