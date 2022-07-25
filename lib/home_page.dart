import 'package:demo_flutter_localization/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Localization'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(AppLocalizations.of(context).helloWorld),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    App.of(context)
                        .setLocale(Locale.fromSubtags(languageCode: 'en'));
                  },
                  child: Text('En'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () {
                    App.of(context)
                        .setLocale(Locale.fromSubtags(languageCode: 'th'));
                  },
                  child: Text('Th'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
