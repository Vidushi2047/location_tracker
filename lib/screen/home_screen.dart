import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location_tracker/bloc/location/cubit/loacation_cubit.dart';
import 'package:location_tracker/bloc/polyLine/cubit/poly_line_cubit.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location_tracker/utils/keys.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LatLng _center = const LatLng(28.6163315, 77.3771975);
  late GoogleMapController mapController;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final List<LatLng> markerLocations = [
    const LatLng(25.897305, 81.945297),
    const LatLng(22.171841, 76.065422),
    const LatLng(21.212730, 40.287240),
    const LatLng(26.846695, 26.846695),
    const LatLng(26.787964, 82.198555),
    const LatLng(28.58000000, 77.33000000),
    const LatLng(25.597305, 81.945297),
    const LatLng(22.271841, 76.065422),
    const LatLng(21.312730, 40.287240),
    const LatLng(26.146695, 26.846695),
    const LatLng(26.7087964, 82.198555),
    const LatLng(28.18000000, 77.33000000),
    const LatLng(27.18333, 78.01667),
    const LatLng(31.104605, 77.173424),
    const LatLng(28.693840, 77.548550),
  ];

  LatLng startLocation = const LatLng(28.6162935, 77.3772123);
  LatLng endLocation = const LatLng(28.6218131, 77.3641630);
  Map<PolylineId, Polyline> polylines = {};
  Map<MarkerId, Marker> marker = {};
  PolylinePoints polylinePoints = PolylinePoints();
  // getDirections() async {
  //   print('get direction');
  //   List<LatLng> polylineCoordinates = [];

  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //     mapApiKey,
  //     PointLatLng(startLocation.latitude, startLocation.longitude),
  //     PointLatLng(endLocation.latitude, endLocation.longitude),
  //     travelMode: TravelMode.driving,
  //   );

  //   if (result.points.isNotEmpty) {
  //     result.points.forEach((PointLatLng point) {
  //       polylineCoordinates.add(LatLng(point.latitude, point.longitude));
  //     });
  //   } else {
  //     print(result.errorMessage);
  //   }
  //   addPolyLine(polylineCoordinates);
  // }

  // addPolyLine(List<LatLng> polylineCoordinates) {
  //   PolylineId id = PolylineId("poly");
  //   Polyline polyline = Polyline(
  //     polylineId: id,
  //     color: Colors.deepPurpleAccent,
  //     points: polylineCoordinates,
  //     width: 8,
  //   );
  //   polylines[id] = polyline;
  //   setState(() {});
  // }

  // List<LatLng> polylineCoordinates = [];
  static const LatLng destination = LatLng(28.621813189034, 77.3641630473493);
  @override
  void initState() {
    // getDirections();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Location Tracker'),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return const HomeScreen1();
                  // }));
                },
                icon: const Icon(Icons.location_on))
          ],
        ),
        body: BlocBuilder<LoacationCubit, LoacationState>(
          builder: (context, state) {
            print('builder');
            return GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId('Sydney'),
                  position: LatLng(state.lat, state.long),
                ),
              },
              // polylines: Set<Polyline>.of(polylines.values),
            );
          },
        ));
  }
}
