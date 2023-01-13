import 'package:flutter/material.dart';
import 'package:practica41/data/data.dart';
import 'package:practica41/providers/providers.dart';
import 'package:practica41/screens/screens.dart';
import 'package:provider/provider.dart';

void main() async {
  // Metode per poder recuperar la info (el Preferencies.init) abans del runApp
  // Per usar mètides async bàsicament
  WidgetsFlutterBinding.ensureInitialized();

  // Metode per recuperar la informacio dels preus i del import
  await Preus.init();
  await Total.init();

  // Colocam els providers a la arrel
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => TotalProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GastoBar',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomeScreen(),
        'preferences': (BuildContext context) => PreferencesScreen(),
      },
    );
  }
}
