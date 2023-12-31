import 'package:example/Controllers/pontoturistico_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

final appKey = GlobalKey();

class PontosTuristicosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: appKey,
      appBar: AppBar(
        title: Text('Pontos'),
      ),
      body: ChangeNotifierProvider<PontoTuristicoController>(
        create: (context) => PontoTuristicoController(),
        child: Builder(builder: (context) {
          final local = context.watch<PontoTuristicoController>();

          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(local.lat, local.long),
              zoom: 18,
            ),
            zoomControlsEnabled: true,
            mapType: MapType.normal,
            myLocationEnabled: true,
            onMapCreated: local.onMapCreated,
            markers: local.markers,
          );
        }),
      ),
    );
  }
}
