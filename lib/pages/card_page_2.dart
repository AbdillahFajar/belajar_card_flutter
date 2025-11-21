import 'package:flutter/material.dart';

class CardPage2 extends StatelessWidget {
  const CardPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Page 2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tentang Saya',
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '''Assalamu\'alaikum... Nama saya, Fajar Abdillah. Saya adalah mahasiswa semester 5 di Institut Teknologi dan Bisnis Bina Sarana Global\nfakultas Teknologi Informasi dan Komunikasi, jurusan Teknik Informatika \nyang berfokus pada pembelajaran pengembangan perangkat lunak. Saya memiliki ketertarikan di bidang pengembngan aplikasi backend\nbaik web ataupun mobile.''' ,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            )
          )
        )
      ),
    );
  }
}