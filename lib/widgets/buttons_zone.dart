// Aquet widget d'encarrega de mostrar els botons a la pantalla principal
// corresponents a cada item a calcular

import 'package:flutter/material.dart';
import 'package:practica41/data/data.dart';
import 'package:practica41/providers/providers.dart';
import 'package:provider/provider.dart';

class ButtonsZone extends StatelessWidget {
  const ButtonsZone({super.key});

  @override
  Widget build(BuildContext context) {
    //Variables de pantalla
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.7,
      color: Colors.amber[200],
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        // Icones a la pantalla principal
        children: [
          _botoCafe(context),
          _botoTallat(context),
          _botoAigua(context),
          _botoCopa(context),
          _botoMenjar(context),
          _botoSnack(context),
        ],
      ),
    );
  }

  // Bontons per anar sumant els preus.
  GestureDetector _botoCafe(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Recuperam preus dels valors del SharedPreferences per realitzar
        // els calculs
        Total.import += Preus.cafe;

        // Enviam el valor del total al Provider
        Provider.of<TotalProvider>(context, listen: false)
            .setTotal(Total.import);
      },
      child: FittedBox(
        fit: BoxFit.fill,
        child: Icon(Icons.coffee),
      ),
    );
  }

  GestureDetector _botoTallat(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Recuperam preus dels valors del SharedPreferences per realitzar
        // els calculs
        Total.import += Preus.tallat;

        // Enviam el valor del total al Provider
        Provider.of<TotalProvider>(context, listen: false)
            .setTotal(Total.import);
      },
      child: FittedBox(
        fit: BoxFit.fill,
        child: Icon(Icons.coffee_outlined),
      ),
    );
  }

  GestureDetector _botoAigua(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Recuperam preus dels valors del SharedPreferences per realitzar
        // els calculs
        Total.import += Preus.aigua;

        // Enviam el valor del total al Provider
        Provider.of<TotalProvider>(context, listen: false)
            .setTotal(Total.import);
      },
      child: FittedBox(
        fit: BoxFit.fill,
        child: Icon(Icons.local_drink),
      ),
    );
  }

  GestureDetector _botoCopa(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Recuperam preus dels valors del SharedPreferences per realitzar
        // els calculs
        Total.import += Preus.copa;

        // Enviam el valor del total al Provider
        Provider.of<TotalProvider>(context, listen: false)
            .setTotal(Total.import);
      },
      child: FittedBox(
        fit: BoxFit.fill,
        child: Icon(Icons.wine_bar),
      ),
    );
  }

  GestureDetector _botoMenjar(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Recuperam preus dels valors del SharedPreferences per realitzar
        // els calculs
        Total.import += Preus.menjar;

        // Enviam el valor del total al Provider
        Provider.of<TotalProvider>(context, listen: false)
            .setTotal(Total.import);
      },
      child: FittedBox(
        fit: BoxFit.fill,
        child: Icon(Icons.lunch_dining),
      ),
    );
  }

  GestureDetector _botoSnack(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Recuperam preus dels valors del SharedPreferences per realitzar
        // els calculs
        Total.import += Preus.snack;

        // Enviam el valor del total al Provider
        Provider.of<TotalProvider>(context, listen: false)
            .setTotal(Total.import);
      },
      child: FittedBox(
        fit: BoxFit.fill,
        child: Icon(Icons.cookie),
      ),
    );
  }
}
