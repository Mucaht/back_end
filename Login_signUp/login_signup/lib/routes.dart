import 'package:flutter/material.dart';
import 'package:login_signup/view/home_page.dart';
import 'package:login_signup/view/login.dart';

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
      initialRoute: '/homepage',
      routes: {
        '/login': (context) => const LoginPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
