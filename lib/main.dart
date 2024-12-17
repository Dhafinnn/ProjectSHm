import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/botnav.dart';


import 'package:smarthome/providers/lampu_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => LampuProvider())],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Botnav(),
        ));
  }
}
