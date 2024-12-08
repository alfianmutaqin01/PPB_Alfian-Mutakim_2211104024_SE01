1. Apa nama package yang digunakan untuk mengintegrasikan Google Maps di Flutter dan langkah-langkahnya? <br> Nama package: google_maps_flutter.
<br>
Langkah-langkah menambahkan package Google Maps.<br>
Tambahkan dependency di pubspec.yaml <br>
dependencies:<br>
  google_maps_flutter: ^2.2.0 # Versi dapat disesuaikan<br>

Jalankan perintah berikut untuk mengunduh package: flutter pub get
<br>
Android: Tambahkan API Key di android/app/src/main/AndroidManifest.xml: <br>
<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_API_KEY" />
<br>
iOS: Tambahkan API Key di ios/Runner/AppDelegate.swift: <br>
GMSServices.provideAPIKey("YOUR_API_KEY")<br>
Mengapa kita perlu menambahkan API Key, dan di mana API Key diatur? <br>
API Key digunakan untuk mengautentikasi aplikasi dan memastikan penggunaan layanan Google Maps sesuai dengan kuota dan izin yang diberikan.
Diatur di: File konfigurasi aplikasi:
Android: AndroidManifest.xml dan iOS: AppDelegate.swift <br>






