import 'package:flutter/material.dart';
import 'package:practica41/data/data.dart';

// Declara el provider
class PreusProvider extends ChangeNotifier {
  //Variable
  late double preuCafe;

  //Constructor
  PreusProvider() {
    this.getPreus();
  }

  getPreus() {
    preuCafe = Preus.cafe;
    notifyListeners();
  }
}
