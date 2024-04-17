// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  MapController _mapController = MapController();
  LatLng _currentLocation = LatLng(0, 0);

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  Future<void> _getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation);
    setState(() {
      _currentLocation = LatLng(position.latitude, position.longitude);
      _mapController.move(_currentLocation, 15.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: LatLng(15.50297095, 120.57933925),
        initialZoom: 18,
      ),
      children: [
        TileLayer(
          urlTemplate:
              'https://api.mapbox.com/styles/v1/samhouu/clur16ary00l501r70c79d9ms/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2FtaG91dSIsImEiOiJjbHVuamoxeGcweXJ3MmlwN205aTFwb2tmIn0.Wp5WKXqOSNJAHPLSExuWVw',
          userAgentPackageName: 'com.example.app',
          // additionalOptions: {
          //   'accessToken':
          //       'pk.eyJ1Ijoic2FtaG91dSIsImEiOiJjbHVuamoxeGcweXJ3MmlwN205aTFwb2tmIn0.Wp5WKXqOSNJAHPLSExuWVw',
          //   //'id': 'samhouu.clupmh2bg0ig31mo642b5fzci-1f4bs',
          // }
        ),
        CircleLayer(
          circles: [
            CircleMarker(
              point: LatLng(15.50297095, 120.57933925),
              radius: 10,
              useRadiusInMeter: true,
              color: Colors.blue.shade100.withOpacity(0.5),
            ),
          ],
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(15.50297095, 120.57933925),
              width: 80,
              height: 80,
              child: Icon(
                Icons.circle,
                color: Colors.blue,
                size: 20.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
