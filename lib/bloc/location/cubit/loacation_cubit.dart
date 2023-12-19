import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:location/location.dart';
import 'package:meta/meta.dart';

part 'loacation_state.dart';

class LoacationCubit extends Cubit<LoacationState> {
  LoacationCubit() : super(LoacationState.initial());
  void getLocation() async {
    double latt;
    double longg;
    Location location = Location();
    final fs = FirebaseFirestore.instance;
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    fs.collection('locationl').doc('loc_id').set({
      'lat': _locationData.latitude,
      'long': _locationData.longitude,
    });
    location.onLocationChanged.listen((LocationData currentLocation) {
      _locationData = currentLocation;
      print('current location--${_locationData.latitude}');
      print('current location-${_locationData.longitude}');

      fs.collection('locationl').doc('loc_id').update({
        'lat': _locationData.latitude,
        'long': _locationData.longitude,
      }).then((value) {
        print('update');
        emit(state.copyWith(
            lat: _locationData.latitude, long: _locationData.longitude));
      }).catchError((error) {
        print(error);
      });
    });
  }
}
