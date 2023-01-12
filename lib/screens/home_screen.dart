import 'package:flutter/material.dart';
import 'package:practica41/screens/screens.dart';
import 'package:practica41/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GastoBar'),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'preferences');
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ButtonsZone(),
            TotalAmount(),
          ],
        ),
      ),
    );
  }
}
