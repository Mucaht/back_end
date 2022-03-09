import 'package:code/login.dart';
import 'package:flutter/material.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Karan Emlak | Otomotiv ',
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => const AddProduct(),
      },
    );
  }
}