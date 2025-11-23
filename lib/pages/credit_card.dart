import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    //Langkah 1: Pake shortcut Scaffold dari extension NGEBUT dan menambahkan warna gradasi serta Clip.antiAlias secara manual
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
              //Langkah 2: Bikin Column untuk membungkus semua konten card-nya
              child: Column(
                mainAxisSize: MainAxisSize.min, //ini agar ukuran column, menyesuaikan dengan isinya (children-nya)
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0), //ini digunakan untuk memberi jarak dalam, agar isi card-nya punya jarak di sekeliling mereka
                    child: Column(
                      children: [
                        //Langkah 3: Bikin konten pertama yang disusun dengan row. Posisi konten ini akan berada di paling atas dari semua konten yang ada
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, //ini agar isi row-nya punya jarak di antara mereka. Semakin sedikit isi row-nya, jaraknya akan semakin lebar
                          children: [
                            //Start bikin Logo BCA pake AssetImage
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/bca_logo.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            //End
                            //Start bikin tulisan Black titanium
                            Column(
                              children: [
                                Text(
                                  "BLACK",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "titanium",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 5),

                        //Langkah 4: Bikin konten kedua, yaitu bikin ikon chip kartu dan contactless. Keduan ikon ini, disusun dengan row dan diatur agar di antara mereka, punya space kosong menggunakan spaceBetween
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Start bikin ikon chip kartu tapi pake AssetImage
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/card_chip.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            //End

                            //Start bikin ikon contactless
                            Icon(
                              Icons.contactless,
                              color: Colors.white54,
                              size: 64,
                            ),
                            //End
                          ],
                        ),

                        SizedBox(height: 10),

                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
