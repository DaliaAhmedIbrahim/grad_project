import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  LocationData? _userLocation;

  Future<void> _getUserLocation() async {
    Location location = Location();

    // Check if location service is enable
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    // Check if permission is granted
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    final _locationData = await location.getLocation();
    setState(() {
      _userLocation = _locationData;
      print('${_userLocation?.latitude}, ${_userLocation?.longitude}');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _getUserLocation,
                child: const Text('Check Location')
            ),
            const SizedBox(height: 25),
            // Display latitude & longtitude
            _userLocation != null ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  Text('Your latitude: ${_userLocation?.latitude}'),
                  const SizedBox(width: 10),
                  Text('Your longtitude: ${_userLocation?.longitude}')
                ],
              ),
            ) : Container()
          ],
        ),
      ),
    );
  }
}
