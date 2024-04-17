import 'package:flutter/material.dart';
import 'package:woosmap_flutter/woosmap_flutter.dart';

class WoosMapPage extends StatelessWidget {
  
  const WoosMapPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return WoosmapMapViewWidget.create(
      wooskey: "woos-64c7cde7-c2c7-3be1-a924-a363f183fb38",
      onRef: (p0) async {
        _controller = p0;
      },
      mapOptions: MapOptions(
          center: LatLng.fromJson({"lat": 15.50297095, "lng": 120.57933925}),
          zoom: 10),
      click: (message) {
        debugPrint("idle");
      },
      bounds_changed: () {
        debugPrint("idle");
      },
      center_changed: () {
        debugPrint("idle");
      },
      dblclick: (m) {
        debugPrint("idle");
      },
      drag: () {
        debugPrint("idle");
      },
      dragend: () {
        debugPrint("idle");
      },
      dragstart: () {
        debugPrint("idle");
      },
      idle: () {
        debugPrint("idle");
      },
      mousemove: (x) {
        debugPrint("idle");
      },
      mouseout: (x) {
        debugPrint("idle");
      },
      mouseover: (x) {
        debugPrint("idle");
      },
      rightclick: (x) {
        debugPrint("idle");
      },
      zoom_changed: () {
        debugPrint("idle");
      },
    );
  }
}
