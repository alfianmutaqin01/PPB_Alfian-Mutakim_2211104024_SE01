// void main () {
//   print("Melanjutkan materi dart");
//   int a = 5;
//   int b = 3;
//   print(a>=b ? true : false);
// }

// nul llabel  
// String? a;

// List<String> daftarMahasiswa = ["agus", "budi", "caca"]{
//   return mahasiswa;

// }

// double sum(double a, double b){
//   return a + b;
// }

// List<String> daftarMahasiswa(List<String>mahasiswa){
//   return mahasiswa;
// }
// void main(){
//   print (daftarMahasiswa(["agus", "budi", "caca"]));
// }

// void main(){
//   print(rerataIPKMahasiswa([3.5, 4.0, 3.4, 2.9]));
// }
// double rerataIPKMahasiswa(List<double> a) => a.reduce((a,b) => a + b) / a.length;
// class Animal{
//   String name;
//   int age;
//   Animal (this.name, this.age);
// }


// void main(){
//   Animal cat = Animal("kucing", 2);
//   print(Animal(cat.name));
// }

// import 'dart:math';
// void buatMatriksDanTranspose(int baris, int kolom) {
//   Random acak = Random();

//   List<List<int>> matriks = List.generate(baris, (_) => List.generate(kolom, (_) => acak.nextInt(10)));

//   print("Matriks $baris x $kolom:");
//   matriks.forEach((baris) => print(baris.join(' ')));

//   print("\nHasil transpose:");
//   for (int j = 0; j < kolom; j++) {
//     print([for (int i = 0; i < baris; i++) matriks[i][j]].join(' '));
//   }
// }

// void main() {
//   int baris = 3; // Jumlah baris
//   int kolom = 2; // Jumlah kolom

//   buatMatriksDanTranspose(baris, kolom);
// }

// void cariBilangan(int nilai) {
//   // Membuat List 2 dimensi berukuran 4
//   List<List<int>> listDuaDimensi = [
//     [5, 10, 15],
//     [2, 4, 6, 8],
//     [for (int i = 1; i <= 5; i++) i * i], 
//     [for (int i = 3; i <= 8; i++) i]  
//   ];

//   // Output isi List
//   print("Isi List:");
//   listDuaDimensi.forEach((baris) => print(baris.join(' ')));

//   // Mencari nilai dalam List
//   print("\nBilangan yang dicari: $nilai");
//   bool ditemukan = false; 

//   for (int i = 0; i < listDuaDimensi.length; i++) {
//     for (int j = 0; j < listDuaDimensi[i].length; j++) {
//       if (listDuaDimensi[i][j] == nilai) {
//         print("Ditemukan di: baris ${i + 1} kolom ${j + 1}");
//         ditemukan = true;
//       }
//     }
//   }

//   if (!ditemukan) {
//     print("$nilai tidak ditemukan dalam List.");
//   }
// }

// void main() {
//   cariBilangan(2);
//   print(""); 
//   cariBilangan(5);
// }

int hitungKPK(int a, int b) {
  return (a * b) ~/ hitungFPB(a, b);
}

int hitungFPB(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

void main() {
  int bilangan1 = 12;
  int bilangan2 = 8;

  int kpk = hitungKPK(bilangan1, bilangan2);
  
  print("Bilangan 1: $bilangan1");
  print("Bilangan 2: $bilangan2");
  print("KPK $bilangan1 dan $bilangan2 = $kpk");
}
