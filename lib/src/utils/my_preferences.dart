import 'package:shared_preferences/shared_preferences.dart';

class MyPreference {
  MyPreference._privateConstructor();
  SharedPreferences _pref;

  static MyPreference _instance = MyPreference._privateConstructor();

  static MyPreference get instance {
    return _instance;
  }

  initPref() async {
    _pref = await SharedPreferences.getInstance();
  }

  //Get and Set Color
  get primaryColor {
    return _pref.getBool('primaryColor') ?? false;
  }

  set primaryColor(bool value) {
    _pref.setBool('primaryColor', value);
  }

  //Get and Set Color
  get genero {
    return _pref.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _pref.setInt('genero', value);
  }

  //Get and Set Color
  get nombre {
    return _pref.getString('nombre') ?? '';
  }

  set nombre(String value) {
    _pref.setString('nombre', value);
  }

  //Get and Set Color
  get ultimaPagina {
    return _pref.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    _pref.setString('ultimaPagina', value);
  }
}
