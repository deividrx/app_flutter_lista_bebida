import 'package:flutter/material.dart';

class FormBeer extends StatefulWidget {
  const FormBeer({super.key});

  @override
  State<FormBeer> createState() => _FormBeerState();
}

class _FormBeerState extends State<FormBeer> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: const Text("form beer"),
    );
  }
}
