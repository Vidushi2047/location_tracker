// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// part 'poly_line_state.dart';

// class PolyLineCubit extends Cubit<PolyLineState> {
//   PolyLineCubit() : super(PolyLineState.initial());
//   // List<LatLng> polylineCoordinates = state.polylineCoordinates;
//   void getPolyPoints() async {
//     print('polyLine');
//     final state = this.state;
//     List<LatLng> cordinate = [...state.polylineCoordinates];
//     PolylinePoints polylinePoints = PolylinePoints();
//     PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
//       'AIzaSyAhEorG_F3nEtAUo_Mi9Sbc-O-vhUw5BLM', //  Google Map Key
//       const PointLatLng(28.6162935, 77.3772123),
//       const PointLatLng(28.621813189034, 77.3641630473493),
//     );
//     if (result.points.isNotEmpty) {
//       result.points.forEach(
//         (PointLatLng point) => cordinate.add(
//           LatLng(point.latitude, point.longitude),
//         ),
//       );
//     } else {
//       print('empty');
//     }
//     print('cordinate-$cordinate');
//     emit(state.copyWith(polylineCoordinates: cordinate));
//   }
// }
