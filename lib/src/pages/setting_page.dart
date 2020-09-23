import 'package:flutter/material.dart';
import 'package:preferenceapp/src/utils/my_preferences.dart';
import 'package:preferenceapp/src/widgets/menu_widget.dart';

class SettingPage extends StatefulWidget {
  static final String routerName = 'settings';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  MyPreference pref;
  TextEditingController _controller;

  @override
  void initState() {
    pref = MyPreference.instance;
    _controller = new TextEditingController();
    _controller.text = pref.nombre;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: (pref.primaryColor) ? Colors.purple : Colors.blue,
      ),
      body: _getBody(),
      drawer: MenuWidget(),
    );
  }

  Widget _getBody() {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(5.0),
        children: [
          Text(
            'Settings',
            style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          ),
          Divider(),
          _switch(),
          _radioGroup(pref.genero, 1, 'Femenino'),
          _radioGroup(pref.genero, 2, 'Masculino'),
          _textField(),
        ],
      ),
    );
  }

  Widget _switch() {
    return SwitchListTile(
      value: pref.primaryColor,
      title: Text('Color secundario'),
      onChanged: (value) {
        pref.primaryColor = value;
        setState(() {});
      },
    );
  }

  Widget _radioGroup(int group, int value, String titulo) {
    return RadioListTile(
      value: value,
      groupValue: group,
      title: Text(titulo),
      onChanged: (value) {
        pref.genero = value;
        setState(() {});
      },
    );
  }

  Widget _textField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          helperText: 'Introduzca aqui el su nombre',
          hintText: 'Nombre',
          labelText: 'Nombre',
        ),
        onChanged: (value) {
          pref.nombre = value;
        },
      ),
    );
  }
}
