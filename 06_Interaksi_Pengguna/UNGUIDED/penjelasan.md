main.dart: Ini file utama aplikasi, di mana aplikasi Flutter dijalankan. Di sini, kita nge-run MainApp yang nantinya bakal nampilkan widget MyBottom, yang jadi halaman utama aplikasi.

my_bottom.dart: Ini kelas buat Bottom Navigation Bar. Jadi ada tiga halaman yang bisa dipilih, masing-masing terhubung ke widget berbeda (MyTabbar, MyWidget). Ketika kita klik salah satu tab di bawah, halaman bakal berubah sesuai tab yang dipilih, pakai fungsi _onTappedItem.

my_tabbar.dart: Nah, kalau buka halaman MyTabbar, di sini ada Tab Bar yang isinya tiga tab. Masing-masing tab ada ikonnya dan bakal nunjukin konten yang beda-beda di bagian bawahnya, kayak text gitu.

my_widget.dart: Di halaman MyWidget, ada dua input: satu buat nama, satu lagi buat password (ditampilkan sebagai bintang "*"). Judul halaman ini pakai font Poppins dari Google Fonts biar tampilannya lebih keren. Simple, kan?

Intinya, navigasinya pakai Bottom Navigation buat pindah-pindah halaman, dan tiap halaman punya fungsinya sendiri-sendiri.