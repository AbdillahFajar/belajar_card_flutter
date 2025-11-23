import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Dashboard"), actions: const []),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            clipBehavior: Clip.antiAlias, //Karena container menggunakan gradient, maka hal ini menutup seluruh radius (sudut melingkar) bawaan card, sehingga memerlukan clip: antiAlias untuk mengaktifkan kembali sifat radius bawaan dari card tersebut sehingga, lengkungan card-nya kembali terlihat
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.centerLeft,
                  colors: [Colors.black, Colors.grey.shade700],
                ),
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}
