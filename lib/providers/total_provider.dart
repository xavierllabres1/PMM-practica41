import 'package:flutter/material.dart';
import 'package:practica41/data/data.dart';

// Declarar el provider
class TotalProvider extends ChangeNotifier {
  //Variable
  late double importTotal;

  //Constructor
  TotalProvider() {
    this.getTotal();
  }

  // Recuperar Import
  getTotal() {
    importTotal = Total.import;
    notifyListeners();
  }

  // Indicar Total
  setTotal(double valor) {
    importTotal = valor; // Actualitzam valor provider
    Total.import = importTotal; // Guardam valor al SharedPreferences
    notifyListeners();
  }
}
