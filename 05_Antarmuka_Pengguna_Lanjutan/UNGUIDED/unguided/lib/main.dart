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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 227, 32, 32),
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Rekomendasi Wisata Banyumas',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW1l37q7F2gt-Kv6huAEOH7RgRurBpJbVA_w&s',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.network(
                              wisataImages[index],
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  wisataTitles[index],
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 227, 32, 32),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  wisataDescriptions[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: wisataImages.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> wisataImages = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGc4HqJgowbnRCOFkJNX0zfD262cZoOPnwFA&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUTn22PQwGnKQmSI3sue8284oSNtvvaEGmSQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWxlXQHnRdnq-J6jNkUr_21ervTOcmunPfFw&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYt0p4jIqwj2-cT1iiDu4Qye8tOJCaAqT2Iw&s',
];

final List<String> wisataTitles = [
  'Baturraden',
  'Curug Cipendok',
  'Telaga Sunyi',
  'Menara Teratai',
];

final List<String> wisataDescriptions = [
  'Baturraden adalah destinasi wisata alam yang terkenal dengan pemandangan pegunungan yang indah dan udara yang sejuk. Terletak di kaki Gunung Slamet.',
  'Curug Cipendok merupakan salah satu air terjun terindah di Banyumas, dengan ketinggian 92 meter, dikelilingi oleh hutan yang asri.',
  'Telaga Sunyi menawarkan keindahan dan ketenangan, dengan air jernih yang cocok untuk bersantai dan menikmati alam sekitar.',
  'Menara Teratai adalah taman kota yang menjadi tempat favorit warga untuk bersantai dan berolahraga dengan fasilitas lengkap.',
];
