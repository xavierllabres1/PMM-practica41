import 'package:shared_preferences/shared_preferences.dart';

// Classe que ens servirà de interficia d'extracció per accedir als preus guardats
class Total {
  // Indicam late ja que prendra valor més tard
  static late SharedPreferences _total;
  // Actua? com un map

  // Variables a guardar/recuperar
  static double _import = 0.00;

  // Ja que el constructor no pot retornar un "Future" generam el mètode per
  // per recuperar
  static Future init() async {
    _total = await SharedPreferences.getInstance();
  }

  // Getters i Setters
  static double get import {
    return _total.getDouble('import') ?? _import;
    // ?? vol dir que si no es null fa el de davant, sino, el de darrere
  }

  static set import(double valor) {
    _import = valor; // Assignam a la variable privada
    _total.setDouble('import', valor); //Assignam al SharedPreferences
  }
}
