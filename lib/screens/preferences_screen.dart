import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica41/data/preus.dart';
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
          _tallat(),
          _aigua(),
          _copa(),
          _menjar(),
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

// TextForms corresponents a cada producte.
// No es poden introduir valor no numerics
// En cas de deixar en blanc, salta el control d'excecions de Flutter (NO PETA)
// A través de Regulat Expression, ha de ser un valor en format modena.

Padding _cafe() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      initialValue: Preus.cafe.toStringAsFixed(2),
      onChanged: (value) {
        Preus.cafe = double.parse(value);
      },
      decoration: InputDecoration(
        labelText: 'Cafè',
        icon: Icon(Icons.coffee),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
    ),
  );
}

Padding _tallat() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      initialValue: Preus.tallat.toStringAsFixed(2),
      onChanged: (value) {
        Preus.tallat = double.parse(value);
      },
      decoration: InputDecoration(
        labelText: 'Tallat',
        icon: Icon(Icons.coffee_outlined),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
    ),
  );
}

Padding _copa() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      initialValue: Preus.copa.toStringAsFixed(2),
      onChanged: (value) {
        Preus.copa = double.parse(value);
      },
      decoration: InputDecoration(
        labelText: 'Copa',
        icon: Icon(Icons.wine_bar),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
    ),
  );
}

Padding _aigua() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      initialValue: Preus.aigua.toStringAsFixed(2),
      onChanged: (value) {
        Preus.aigua = double.parse(value);
      },
      decoration: InputDecoration(
        labelText: 'Aigua',
        icon: Icon(Icons.local_drink),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
    ),
  );
}

Padding _menjar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      initialValue: Preus.menjar.toStringAsFixed(2),
      onChanged: (value) {
        Preus.menjar = double.parse(value);
      },
      decoration: InputDecoration(
        labelText: 'Menjar',
        icon: Icon(Icons.lunch_dining),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
    ),
  );
}

Padding _snack() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      initialValue: Preus.snack.toStringAsFixed(2),
      onChanged: (value) {
        Preus.snack = double.parse(value);
      },
      decoration: InputDecoration(
        labelText: 'Snack',
        icon: Icon(Icons.cookie),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
    ),
  );
}
