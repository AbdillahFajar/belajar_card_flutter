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
                child: Column(
                  children: [
                    Card(
                      color: Colors.amber,
                      elevation: 8, //bikin efek bayangan di card-nya
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Card warna amber",
                          style: TextStyle(
                            fontSize: 16.0
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}