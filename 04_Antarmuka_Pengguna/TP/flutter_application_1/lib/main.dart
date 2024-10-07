import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rekomendasi Wisata'),
          backgroundColor: const Color.fromARGB(255, 197, 84, 217),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Dieng Plateau',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              
              Image.network(
                'https://www.mbtech.info/asset/uploads/2023/05/Wisata-Dieng-3.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              
              Text(
                'Dieng Plateau adalah dataran tinggi di Jawa Tengah yang terkenal dengan pemandangan alam yang memukau, candi-candi kuno, serta kawah-kawah aktif. Tempat ini sering kali dianggap sebagai "negeri di atas awan" karena ketinggiannya yang luar biasa dan cuaca yang sejuk.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  // primary: Colors.purple, 
                ),
                child: Text('Kunjungi Sekarang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
