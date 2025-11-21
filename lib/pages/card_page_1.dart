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
                    Center(
                      child: Card(
                        shadowColor: Colors.red, //pake shadowColor untuk memberikan warna pada efek bayangannya (elevation)
                        semanticContainer: true, //menentukan apakah card ini adalah kontainer semantik. Kalau true, card akan dianggap sebagai satu kesatuan oleh pembaca layar. Kalau false, pembaca layar mungkin akan memperlakukan konten di dalam card secara terpisah. Cari tahu lagi lebih jelasnya!
                        //Menentukan bagaimana konten atau isi card dipotong dengan clipBehavior. Tapi, gak ada perbedaannya. Mungkin harus dihapusin yang gak perlu dulu
                        // clipBehavior: Clip.none, //gak dipotong sama sekali kontennya,
                        // clipBehavior: Clip.hardEdge, //kontennya dipotong sesuai border card-nya,
                        // clipBehavior: Clip.antiAlias, //kontennya dipotong sesuai border card-nya dengan efek halus (anti aliasing),
                        clipBehavior: Clip.antiAliasWithSaveLayer, //kontennya dipotong sesuai border card-nya dengan efek halus dan disimpan di layer terpisah,
                        margin: EdgeInsets.all(16.0), //bikin jarak di sekitar card-nya (di luar card)
                        color: Colors.amber,
                        elevation: 8, //bikin efek bayangan di card-nya
                        shape: RoundedRectangleBorder( //menggunakan properti shape untuk mengatur bentuk card-nya
                          borderRadius: BorderRadius.circular(15.0),  //mmebuat lengkungan di sudut card-nya
                          side: BorderSide( //pake properti side supaya bisa pakai BorderSide untuk tambahin border beserta hiasannya di card
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
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}