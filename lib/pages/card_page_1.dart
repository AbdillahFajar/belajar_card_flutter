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
                      margin: EdgeInsets.all(16.0), //bikin jarak di sekitar card-nya (di luar card)
                      color: Colors.amber,
                      elevation: 8, //bikin efek bayangan di card-nya
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), 
                        side: BorderSide(
                          color: Colors.black,
                          width: 3.0
                        ),
                      ),
                      borderOnForeground: true, //ini buat apaan cuy?
                      child: Padding( //widget Padding, supaya bisa pakai properti padding kayak di bawah ini
                        padding: const EdgeInsets.all(8.0), //bikin spasi di sekitar tulisan/isi/konten di dalam card-nya
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