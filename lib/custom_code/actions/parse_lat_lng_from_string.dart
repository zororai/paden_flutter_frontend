// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

LatLng parseLatLngFromString(String input) {
  final regex =
      RegExp(r'LatLng\(lat:\s*(-?\d+\.?\d*),\s*lng:\s*(-?\d+\.?\d*)\)');
  final match = regex.firstMatch(input);
  if (match != null) {
    final lat = double.parse(match.group(1)!);
    final lng = double.parse(match.group(2)!);
    return LatLng(lat, lng);
  }
  throw FormatException('Invalid LatLng format');
}

Future<LatLng> ParseLatLngFromString(String input) async {
  return parseLatLngFromString(input);
}
