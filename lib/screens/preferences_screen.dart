import 'package:flutter/material.dart';
import 'package:practica41/providers/providers.dart';
import 'package:provider/provider.dart';

class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preus'),
      ),
      body: ListView(
        //Es mostra una llista d'elements al body, que s'implementen per separat
        /* Llista d'elements al body */
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        children: [
          _cafe(),
          Divider(),
          _tallat(),
          Divider(),
          _aigua(),
          Divider(),
          _copa(),
          Divider(),
          _menjar(),
          Divider(),
          _snack(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exposure_zero),
        onPressed: () {
          Provider.of<TotalProvider>(context, listen: false).setTotal(0);
          Navigator.pop(context);
        },
      ),
    );
  }
}

Padding _cafe() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      // initialValue: Preferences.nom,
      // onChanged: (value) {
      //   Preferences.nom = value;
      //   setState(() {});
      // },
      decoration: InputDecoration(
        labelText: 'Cafè',
        icon: Icon(Icons.coffee),
      ),
    ),
  );
}

Padding _tallat() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      // initialValue: Preferences.nom,
      // onChanged: (value) {
      //   Preferences.nom = value;
      //   setState(() {});
      // },
      decoration: InputDecoration(
        labelText: 'Tallat',
        icon: Icon(Icons.coffee_outlined),
      ),
    ),
  );
}

Padding _copa() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      // initialValue: Preferences.nom,
      // onChanged: (value) {
      //   Preferences.nom = value;
      //   setState(() {});
      // },
      decoration: InputDecoration(
        labelText: 'Copa',
        icon: Icon(Icons.wine_bar),
      ),
    ),
  );
}

Padding _aigua() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      // initialValue: Preferences.nom,
      // onChanged: (value) {
      //   Preferences.nom = value;
      //   setState(() {});
      // },
      decoration: InputDecoration(
        labelText: 'Aigua',
        icon: Icon(Icons.local_drink),
      ),
    ),
  );
}

Padding _menjar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      // initialValue: Preferences.nom,
      // onChanged: (value) {
      //   Preferences.nom = value;
      //   setState(() {});
      // },
      decoration: InputDecoration(
        labelText: 'Menjar',
        icon: Icon(Icons.lunch_dining),
      ),
    ),
  );
}

Padding _snack() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      // initialValue: Preferences.nom,
      // onChanged: (value) {
      //   Preferences.nom = value;
      //   setState(() {});
      // },
      decoration: InputDecoration(
        labelText: 'Snack',
        icon: Icon(Icons.cookie),
      ),
    ),
  );
}
