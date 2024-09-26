// void main () {
//   String namaMahasiswa; //Deklarasi
//   double ipk = 3.99; //inisialisasi

  // bool isStudent = true;

  // int umur = 20;

  // String namaHewan = "ikan";
  // print(ipk);

  // var nilai = 90;
  // nilai="satu";
  // print(nilai);

  // dynamic alamat = "Wsb";
  // alamat="80";
  // print(alamat);

// }

// void main() {
//   List<dynamic> namaMahasiswa = ["alfian", 2, false, ["makan", "olahraga"]];
//   print(namaMahasiswa[5]);
// }

void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "John Doe",
      "ipk": 3.88,
      "isMarried": false,
    },
    {
      "nama": "Andi Doe",
      "ipk": 3.78,
      "isMarried": true,
    },
    {
      "nama": "Budi Doe",
      "ipk": 3.68,
      "isMarried": true,
    }
  ];

  // 1.a. Menghitung rerata dari IPK
  double semuaIpk = 0;
  for (var mahasiswa in daftarMahasiswa) {
    semuaIpk += mahasiswa['ipk'];
  }
  double ratarataIpk = semuaIpk / daftarMahasiswa.length;
  print('Rata-rata IPK: $ratarataIpk');

  // 1.b. Menjumlahkan berapa banyak mahasiswa yang sudah menikah
  int dataNikah = 0;
  for (var mahasiswa in daftarMahasiswa) {
    if (mahasiswa['isMarried']) {
      dataNikah++;
    }
  }
  print('Jumlah mahasiswa yang sudah menikah: $dataNikah');
}