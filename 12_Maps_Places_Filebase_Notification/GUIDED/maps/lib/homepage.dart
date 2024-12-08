import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps Demo'),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationEnabled: true,
        onMapCreated: _onMapCreated,
        zoomControlsEnabled: false,
      ),
    );
  }

  @override
  void dispose() {
    _mapController.dispose(); 
    super.dispose();
  }
}
