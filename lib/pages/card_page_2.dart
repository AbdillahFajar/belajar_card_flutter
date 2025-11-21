import 'package:flutter/material.dart';

class CardPage2 extends StatelessWidget {
  const CardPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Page 2"), actions: const []),
      body: SingleChildScrollView(child: Center(child: Card(elevation: 8))),
    );
  }
}
