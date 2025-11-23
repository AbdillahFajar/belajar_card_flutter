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

                        //Langkah 5: Bikin nomor rekening (norek)
                        //Start bikin norek yang disusun dengan row, karena, di tiap 4 angkanya, ada spasi 
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: [
                            Text(
                              '4562',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontFamily: 'RobotoMono',
                              ),
                            ),

                            SizedBox(width: 20),

                            Text(
                              '1112',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontFamily: 'RobotoMono',
                              ),
                            ),

                            SizedBox(width: 20),

                            Text(
                              '4595',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontFamily: 'RobotoMono',
                              ),
                            ),

                            SizedBox(width: 20),

                            Text(
                              '7852',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontFamily: 'RobotoMono',
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 15),

                        //Langkah 6: Bikin semua konten terakhir yang mencakup tanggal kadaluwarsa kartu, nama nasabah dan logo mastercard dan susun dengan 1 row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, //Konten terakhir, dibagi menjadi 2, yang pertama disusun dengan column, yang berisi tanggal kadaluwarsa kartu dan nama nasabah dan kedua, logo mastercard. Kedua konten ini, diatur posisinya dengan spaceBetween
                          children: [
                            //Pembuatan konten terakhir, bagian pertama:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //Row untuk bikin tanggal kadaluwarsa kartu
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'VALID\nTHRU',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontFamily: 'RobotoMono',
                                          ),
                                        ),
                                        SizedBox(width: 30),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'MONTH/YEAR',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontFamily: 'RobotoMono',
                                              ),
                                            ),
                                            Text(
                                              '12/25',
                                              style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.white,
                                                fontFamily: 'RobotoMono',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                //Bikin nama nasabah
                                Text(
                                  'FAJAR ABDILLAH',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontFamily: 'RobotoMono',
                                  ),
                                ),
                              ],
                            ),
                          //Start bikin logo mastercard (lingkaran merah dan kuning) dengan menyusunnya menggunakan Stack, agar kedua lingkarannya, bisa saling tindih
                          Stack(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFEB001B),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF79E1B),
                                  shape: BoxShape.circle
                                ),
                              )
                            ],
                          )
                          ],
                        ),
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
