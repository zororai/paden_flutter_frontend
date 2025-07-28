// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class DirectionsLauncher extends StatefulWidget {
  const DirectionsLauncher({
    Key? key,
    required this.destination,
    this.width,
    this.height,
  }) : super(key: key);

  final LatLng destination;
  final double? width;
  final double? height;

  @override
  _DirectionsLauncherState createState() => _DirectionsLauncherState();
}

class _DirectionsLauncherState extends State<DirectionsLauncher> {
  bool _isLoading = false;

  Future<void> _openGoogleMapsDirections() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Request location permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        permission = await Geolocator.requestPermission();
        if (permission != LocationPermission.whileInUse &&
            permission != LocationPermission.always) {
          throw Exception('Location permission denied');
        }
      }

      // Get current location
      final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      final originLat = position.latitude;
      final originLng = position.longitude;

      final destLat = widget.destination.latitude;
      final destLng = widget.destination.longitude;

      final url =
          'https://www.google.com/maps/dir/?api=1&origin=$originLat,$originLng&destination=$destLat,$destLng';

      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw Exception('Could not launch Google Maps');
      }
    } catch (e) {
      debugPrint('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: _isLoading ? null : _openGoogleMapsDirections,
        child: _isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : const Text("Get Directions"),
      ),
    );
  }
}
