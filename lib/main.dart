import 'package:flutter/material.dart';

import 'package:preferenceapp/src/pages/home_page.dart';
import 'package:preferenceapp/src/pages/setting_page.dart';
import 'package:preferenceapp/src/utils/my_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyPreference.instance.initPref();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _pref = MyPreference.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preference',
      initialRoute: _pref.ultimaPagina,
      routes: {
        HomePage.routerName: (BuildContext context) {
          _pref.ultimaPagina = HomePage.routerName;
          return HomePage();
        },
        SettingPage.routerName: (BuildContext context) {
          _pref.ultimaPagina = SettingPage.routerName;
          return SettingPage();
        }
      },
    );
  }
}
