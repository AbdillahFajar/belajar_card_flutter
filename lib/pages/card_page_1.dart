import 'package:flutter/material.dart';

class CardPage1 extends StatelessWidget {
  const CardPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: const Text("Latihan Flutter Card"),
              centerTitle: true,
              actions: const [],
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: const Column(
                  children: [
                    Card(
                      color: Colors.amber,
                      child: Text(
                        "Card warna amber",
                        style: TextStyle(
                          fontSize: 16.0
                        )
                      )
                    )
                  ],
                ),
              ),
            ),
          );
  }
}