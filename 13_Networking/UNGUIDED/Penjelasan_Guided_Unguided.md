Hasil RUN Unguided: <br>
Penambahan Data Awal<br>
![alt text](<Screenshot 2024-12-14 004459.png>), <br> 
Penghapusan Data <br>
![alt text](<Screenshot 2024-12-14 004514.png>)![alt text] <br>

Penjelasan Singkat: <br>

1. main.dart: Mengatur aplikasi dengan GetX routing dan menentukan tema aplikasi. <br>
2. home_page.dart: Halaman utama yang menampilkan daftar catatan. Catatan dapat dihapus menggunakan tombol delete. <br>
3. add_note_page.dart: Halaman untuk menambahkan catatan baru dengan form untuk judul dan deskripsi. <br>
4. note_controller.dart: Mengelola state catatan menggunakan GetX Controller. <br>

Penjelasan file:<br>

main.dart
File ini adalah titik masuk utama aplikasi. Di dalamnya, kita menginisialisasi aplikasi dengan GetMaterialApp, yang merupakan widget dari GetX untuk menangani navigasi dan state management. Terdapat dua route (/ untuk halaman utama dan /add_note untuk halaman tambah catatan) yang didefinisikan di dalam getPages. Tema aplikasi juga disesuaikan menggunakan ThemeData.<br>

home_page.dart
File ini adalah halaman utama (Homepage) yang menampilkan daftar catatan. Catatan dikelola oleh NoteController, yang menggunakan state reaktif dari GetX (Obx). Setiap catatan ditampilkan dalam widget ListTile dengan judul, deskripsi, dan tombol untuk menghapus catatan. Jika daftar catatan kosong, akan ditampilkan pesan "No notes added." Tombol tambah catatan berupa FloatingActionButton yang mengarahkan pengguna ke halaman tambah catatan menggunakan Get.toNamed. <br>

add_note_page.dart
Halaman ini berisi form untuk menambahkan catatan baru. Form terdiri dari dua TextField untuk memasukkan judul dan deskripsi catatan. Tombol ElevatedButton digunakan untuk menyimpan catatan ke daftar dengan memanggil metode addNote dari NoteController. Setelah catatan ditambahkan, pengguna diarahkan kembali ke halaman utama menggunakan Get.back. <br>

note_controller.dart
Controller ini bertanggung jawab untuk mengelola daftar catatan. Daftar catatan disimpan sebagai RxList (reaktif) sehingga perubahan pada data akan secara otomatis diperbarui di UI. Metode addNote menambahkan catatan baru ke daftar, sedangkan deleteNoteAt menghapus catatan berdasarkan indeks. <br>