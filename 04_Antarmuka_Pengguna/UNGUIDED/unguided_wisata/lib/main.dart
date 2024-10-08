import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Bagian Header Setengah Lingkaran
            ClipPath(
              clipper: HeaderClipper(),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Center(
                  child: Text(
                    'Daftar Wisata Wonosobo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            // Bagian konten daftar wisata
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: wisataImages.length, // Length of your image list
                  itemBuilder: (context, index) {
                    return Container(
                      width: 400,
                      height: 200,
                      margin:
                          const EdgeInsets.all(8.0), // Add margin for spacing
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(
                              wisataImages[index]), // Access image at index
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        wisataTitles[index], // Add title text (optional)
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height); // Mulai dari kiri bawah
    path.quadraticBezierTo(size.width / 2, size.height - 100, size.width,
        size.height); // Setengah lingkaran
    path.lineTo(size.width, 0); // Garis atas
    path.close(); // Menutup path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// Define your image and title lists (replace with your actual data)
final List<String> wisataImages = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP9e1Lc7jMucIULHsH-kDSEfkPekoBnaCGcA&s',
  'https://asset.kompas.com/crops/qO62aZmeVZf4U70Jn-A5E9L-_r8=/0x0:0x0/750x500/data/photo/2021/11/10/618b2344e2870.jpg',
  'https://asset.kompas.com/crops/qO62aZmeVZf4U70Jn-A5E9L-_r8=/0x0:0x0/750x500/data/photo/2021/11/10/618b2344e2870.jpg',
  'https://asset.kompas.com/crops/qO62aZmeVZf4U70Jn-A5E9L-_r8=/0x0:0x0/750x500/data/photo/2021/11/10/618b2344e2870.jpg',
];

final List<String> wisataTitles = [
  'Wisata 1',
  'Wisata 2',
  'Wisata 3',
  'Wisata 4',
];
