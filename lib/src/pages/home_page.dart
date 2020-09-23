import 'package:flutter/material.dart';
import 'package:preferenceapp/src/utils/my_preferences.dart';
import 'package:preferenceapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routerName = 'home';

  @override
  Widget build(BuildContext context) {
    final _pref = MyPreference.instance;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: (_pref.primaryColor) ? Colors.purple : Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Name: ${_pref.nombre}'),
          Divider(),
          Text('Genero: ${_pref.genero}'),
          Divider(),
          Text('Color: ${_pref.primaryColor}'),
          Divider(),
        ],
      ),
      drawer: MenuWidget(),
    );
  }
}
