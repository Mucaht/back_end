import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            inputField(_emailController, 'yil'),
            inputField(_passwordController, 'km'),
            InkWell(
              onTap: () {
                topla(3,4,dorduncu: 5);
              },
              child: const Text('Buton'),
            )
          ],
        ),
      ),
    );
  }

  Widget inputField(TextEditingController controller, String hint) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(4)),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        ),
      ),
    );
  }

  topla(int birinci,int ikinci, {String? ucuncu, int? dorduncu}) {

  }
}
