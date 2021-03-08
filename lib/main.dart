import 'dart:async';
import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:rentage/core/localization/locale_base.dart';
import 'package:rentage/core/widgets/theme.dart';
import 'package:rentage/navigation/routes.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sailor/sailor.dart';

import 'core/bloc/preferences_cubit.dart';
import 'core/localization/localization.dart';
import 'core/themes/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  Routes.createRoutes();

  runZonedGuarded(
        () => runApp(RentageApp()),
        (Object object, StackTrace stackTrace) => dev.log(
      object.toString(),
      error: object,
      stackTrace: stackTrace,
    ),
  );
}

class RentageApp extends StatelessWidget {
  final Map<String, BaseLocale> localizedValues = initializeLocales();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeObserver(
      child: MultiRepositoryProvider(
        providers: <RepositoryProvider<Object>>[
          RepositoryProvider<Sailor>(create: (BuildContext context) {
            return Routes.sailor;
          }),
        ],
        child: Builder(
          builder: (BuildContext context) => MultiBlocProvider(
            providers: <BlocProvider<Object>>[
              /// Global BloC
              BlocProvider<PreferencesCubit>(
                create: (BuildContext context) => PreferencesCubit(),
                lazy: false,
              ),
            ],
            child: MaterialApp(
              title: 'Rentage',
              debugShowCheckedModeBanner: false,

              /// Navigation routes
              onGenerateRoute: Routes.sailor.generator(),
              navigatorKey: Routes.sailor.navigatorKey,

              /// Theme
              themeMode: ThemeMode.light,
              theme: Themes.lightTheme,
              darkTheme: Themes.darkTheme,

              /// Localization
              localizationsDelegates: <LocalizationsDelegate<dynamic>>[
                AppLocalizationsDelegate(localizedValues),
                GlobalWidgetsLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: localizedValues.keys
                  .map((String language) => Locale(language, '')),
            ),
          ),
        ),
      ),
    );
  }
}