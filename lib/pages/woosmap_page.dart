import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:woosmap_flutter/woosmap_flutter.dart';

class WoosMapPage extends StatelessWidget {
  const WoosMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return WoosmapMapViewWidget(
      wooskey: "woos-64c7cde7-c2c7-3be1-a924-a363f183fb38",
      widget: true,
      indoorRendererConfiguration: const {"centerMap": true, "defaultFloor": 0},
      indoorWidgetConfiguration: const {
        "units": "metric",
        "ui": {
          "primaryColor": "#318276",
          "secondaryColor": "#004651",
          "tertiaryColor": "#E20813"
        },
      },
      onRef: (p0) async {
        //_controller = p0;
      },
      indoor_venue_loaded: (message) {
        debugPrint(jsonEncode(message));
      },
      indoor_feature_selected: (message) {
        debugPrint(jsonEncode(message));
      },
      indoor_level_changed: (message) {
        debugPrint("$message");
      },
      indoor_user_location: (message) {
        debugPrint(jsonEncode(message));
      },
      indoor_highlight_step: (message) {
        debugPrint(jsonEncode(message));
      },
    );
  }
}
