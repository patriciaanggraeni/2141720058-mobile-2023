import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = "";
  Future<Position>? position;

  @override
  void initState() {
    super.initState();
    // position = getPosition();
    getPosition().then((Position myPos) {
      myPosition = "Latitude: ${myPos.latitude.toString()} - "
          "Longitude: ${myPos.longitude.toString()}";
      setState(() {
        myPosition = myPosition;
      });
    } );
  }

  @override
  Widget build(BuildContext context) {
    final myWidget = myPosition == ""
    ? const CircularProgressIndicator()
    : Text(myPosition);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Patria Anggara Susilo Putra - Current Location"),
      ),
      body: Center(
        // child: Container(myWidget,),
        child: FutureBuilder(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                 return const Text('Something terrible happened!');
              }
              return Text(snapshot.data.toString());
            } else {
              return const Text("");
            }

            // if (snapshot.connectionState == ConnectionState.waiting) {
            //   return const CircularProgressIndicator();
            // } else if (snapshot.connectionState == ConnectionState.done) {
            //   return Text(snapshot.data.toString());
            // } else {
            //   return const Text("");
            // }
          },
        ),
      ),
    );
  }

  // Future<Position> getPosition() async {
  //   await Geolocator.requestPermission();
  //   await Geolocator.isLocationServiceEnabled();
  //   Position? position = await Geolocator.getCurrentPosition();
  //   return position;
  // }

  Future<Position> getPosition() async {
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }
}
