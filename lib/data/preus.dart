import 'package:shared_preferences/shared_preferences.dart';

// Classe que ens servirà de interficia d'extracció per accedir als preus guardats
class Preus {
  // Indicam late ja que prendra valor més tard
  static late SharedPreferences _preus;
  // Actua? com un map

  // Variables a guardar/recuperar
  static double _cafe = 1.10;
  static double _tallat = 1.20;
  static double _aigua = 1.00;
  static double _copa = 3.50;
  static double _menjar = 7.50;
  static double _snack = 2.30;

  // Ja que el constructor no pot retornar un "Future" generam el mètode per
  // per recuperar
  static Future init() async {
    _preus = await SharedPreferences.getInstance();
  }

  // Getters i Setters
  static double get cafe {
    return _preus.getDouble('cafe') ?? _cafe;
    // ?? vol dir que si no es null fa el de davant, sino, el de darrere
  }

  static set cafe(double valor) {
    _cafe = valor; // Assignam a la variable privada
    _preus.setDouble('cafe', valor); //Assignam al SharedPreferences
  }

  static double get tallat {
    return _preus.getDouble('tallat') ?? _tallat;
    // ?? vol dir que si no es null fa el de davant, sino, el de darrere
  }

  static set tallat(double valor) {
    _tallat = valor; // Assignam a la variable privada
    _preus.setDouble('tallat', valor); //Assignam al SharedPreferences
  }

  static double get aigua {
    return _preus.getDouble('aigua') ?? _aigua;
    // ?? vol dir que si no es null fa el de davant, sino, el de darrere
  }

  static set aigua(double valor) {
    _aigua = valor; // Assignam a la variable privada
    _preus.setDouble('aigua', valor); //Assignam al SharedPreferences
  }

  static double get copa {
    return _preus.getDouble('copa') ?? _copa;
    // ?? vol dir que si no es null fa el de davant, sino, el de darrere
  }

  static set copa(double valor) {
    _copa = valor; // Assignam a la variable privada
    _preus.setDouble('copa', valor); //Assignam al SharedPreferences
  }

  static double get menjar {
    return _preus.getDouble('menjar') ?? _menjar;
    // ?? vol dir que si no es null fa el de davant, sino, el de darrere
  }

  static set menjar(double valor) {
    _menjar = valor; // Assignam a la variable privada
    _preus.setDouble('menjar', valor); //Assignam al SharedPreferences
  }

  static double get snack {
    return _preus.getDouble('snack') ?? _snack;
    // ?? vol dir que si no es null fa el de davant, sino, el de darrere
  }

  static set snack(double valor) {
    _snack = valor; // Assignam a la variable privada
    _preus.setDouble('snack', valor); //Assignam al SharedPreferences
  }
}
