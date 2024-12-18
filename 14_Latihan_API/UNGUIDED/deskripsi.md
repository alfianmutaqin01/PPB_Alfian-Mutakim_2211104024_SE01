Ini aplikasi Flutter yang aku buat untuk latihan HTTP Request, dan aku pakai GetX biar lebih praktis buat handle state management. Intinya, aplikasi ini bisa nge-fetch data dari API, terus bisa juga buat nambah, update, atau hapus data. Nah, API-nya aku pakai JSONPlaceholder, itu semacam API dummy buat testing. <br>

Struktur Kode <br>

main.dart<br>

Ini file utamanya, kak, jadi kayak pintu masuk aplikasi. Aku bikin widget utama MyApp yang isinya langsung nunjuk ke HomeScreen.
Di sini juga aku kasih tema biar nggak monoton. Tapi intinya cuma buat nge-run si HomeScreen aja.
controllers/post_controller.dart<br>

Kalau ini bagian otak dari aplikasi, Kak.
Semua logika bisnis kayak ambil data (GET), nambah data (POST), update data (PUT), dan hapus data (DELETE) aku handle di sini.<br>
Aku juga pakai variabel observasi kayak posts sama isLoading, jadi si GetX bisa bantu update tampilan kalau ada perubahan.<br>
Oh ya, ada snackbar juga buat notifikasi ke user, biar mereka tahu kalau operasinya berhasil atau ada error.<br>
Contoh kalau ambil data:<br>

dart
Copy code
Future<void> fetchPosts() async {
  isLoading.value = true; // Tunjukin loading spinner
  try {
    final response = await http.get(Uri.parse('$baseUrl/posts'));
    if (response.statusCode == 200) {
      posts.value = json.decode(response.body); // Masukin data ke variabel posts
      showSuccessSnackBar('Data berhasil diambil!');
    } else {
      throw Exception('Failed to load posts');
    }
  } catch (e) {
    showErrorSnackBar('Error: $e');
  } finally {
    isLoading.value = false; // Matikan loading spinner
  }
}
Nah, semua fungsi kayak gini aku kasih snackbar, jadi user tahu statusnya.

screens/home_screen.dart <br>

Kalau ini bagian tampilan utama aplikasi. User interaksinya di sini, kak.
Di atas, aku kasih judul "HTTP Request Example with GetX", terus di bawahnya ada daftar data yang diambil dari API.
Ada juga tombol-tombol buat GET, POST, UPDATE, sama DELETE. Tiap tombol ini terhubung ke fungsi di controller tadi.
Aku pakai Obx buat bikin tampilan dinamis. Jadi kalau data berubah, otomatis UI-nya juga ke-update. Contohnya kayak gini:<br>
dart
Copy code <br>
Obx(() => controller.isLoading.value
    ? const Center(child: CircularProgressIndicator()) // Kalau lagi loading
    : controller.posts.isEmpty
        ? const Text("Tekan tombol GET untuk mengambil data") // Kalau kosong
        : Expanded(
            child: ListView.builder(
              itemCount: controller.posts.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: ListTile(
                    title: Text(controller.posts[index]['title']),
                    subtitle: Text(controller.posts[index]['body']),
                  ),
                );
              },
            ),
          )); <br>
Kenapa Pakai GetX?
Menurutku, GetX ini praktis banget, Kak. Ada beberapa alasan:
<br>
State Management: Dengan obs, data di controller bisa langsung terhubung ke UI. Jadi kalau data berubah, UI nggak perlu di-refresh manual.
Dependency Injection: Aku tinggal pakai Get.put() buat nge-register controller di mana-mana tanpa harus bikin ulang.<br>
Snackbar: Ini fitur bawaan yang udah gampang banget dipakai. Jadi aku nggak perlu pakai widget tambahan.