import 'package:demo_flutter_localization/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  static AppState of(BuildContext context) =>
      context.findAncestorStateOfType<AppState>();

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  Locale _locale = Locale.fromSubtags(languageCode: 'th');

  void setLocale(Locale value) => setState(() => _locale = value);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      title: 'Flutter Localization Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate, // Add this line
        GlobalWidgetsLocalizations.delegate, // Add this line
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('th', ''), // Spanish, no country code
      ],
      home: HomePage(),
    );
  }
}
