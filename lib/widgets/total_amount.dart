// Part inferior del la pantalla principal
// S'indica la despesa que s'ha realitzat

import 'package:flutter/material.dart';
import 'package:practica41/providers/providers.dart';
import 'package:provider/provider.dart';

class TotalAmount extends StatelessWidget {
  const TotalAmount({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      padding: const EdgeInsets.all(10),
      color: Colors.black,
      child: FittedBox(
        child: Text(
          //Import de la despesa, que agafa a través del provider
          Provider.of<TotalProvider>(context).importTotal.toStringAsFixed(2) +
              '€',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
