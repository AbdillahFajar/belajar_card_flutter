import 'package:flutter/material.dart';

class CardPage3 extends StatelessWidget {
  const CardPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Oguri Cap Card"), actions: const []),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Card(
              elevation: 8,
              shadowColor: Colors.grey,
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue.shade500, Colors.grey.shade300],
                  ),
                ),
                child: Text("Oguri Cap", style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
