import 'package:code/services/userservice.dart';
import 'package:code/main.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
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
}
