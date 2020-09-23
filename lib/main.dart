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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preference',
      initialRoute: HomePage.routerName,
      routes: {
        HomePage.routerName: (BuildContext context) => HomePage(),
        SettingPage.routerName: (BuildContext context) => SettingPage(),
      },
    );
  }
}
