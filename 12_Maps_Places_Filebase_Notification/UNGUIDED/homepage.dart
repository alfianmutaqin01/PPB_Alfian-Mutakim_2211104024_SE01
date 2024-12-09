import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker_google/place_picker_google.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final LatLng _initialMapCenter = LatLng(-7.4352631, 109.2161336);
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: _initialMapCenter,
    zoom: 11.0,
  );

  late GoogleMapController _mapController;

  // API Key untuk Google Maps (ganti dengan API key Anda)
  final String apiKey = 'AIzaSyDP2Y7i6dIIO5Ls1QilROMHRtBivDaUBiM';

  // Membuat marker
  Set<Marker> _createMarkers() {
    return {
      Marker(
        markerId: const MarkerId("marker_1"),
        position: _initialMapCenter,
        infoWindow: const InfoWindow(title: 'Marker 1'),
      ),
      Marker(
        markerId: const MarkerId("marker_2"),
        position: const LatLng(-6.9733165, 107.6281415),
        infoWindow: const InfoWindow(title: 'Marker 2'),
      ),
    };
  }

  // Fungsi untuk menampilkan Place Picker
  void _showPlacePicker() async {
    LocationResult? result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PlacePicker(
          apiKey: apiKey,
          onPlacePicked: (LocationResult result) {
            // Menampilkan hasil di console
            debugPrint("Place picked: ${result.formattedAddress}");
          },
          initialLocation: _initialMapCenter,
          searchInputConfig: const SearchInputConfig(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            autofocus: false,
            textDirection: TextDirection.ltr,
          ),
          searchInputDecorationConfig: const SearchInputDecorationConfig(
            hintText: "Search for a place...",
          ),
        ),
      ),
    );

    if (result != null) {
      debugPrint("Place picked: ${result.formattedAddress}");
    } else {
      debugPrint("No place selected.");
    }
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps with Place Picker'),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: _showPlacePicker,
          ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationEnabled: true,
        onMapCreated: (controller) => _mapController = controller,
        markers: _createMarkers(),
        zoomControlsEnabled: false,
      ),
    );
  }
}
