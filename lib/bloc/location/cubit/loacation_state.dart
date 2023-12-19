// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'loacation_cubit.dart';

@immutable
class LoacationState extends Equatable {
  double lat;
  double long;
  LoacationState({
    required this.lat,
    required this.long,
  });
  factory LoacationState.initial() {
    return LoacationState(lat: 0, long: 0);
  }
  LoacationState copyWith({
    double? lat,
    double? long,
  }) {
    return LoacationState(
      lat: lat ?? this.lat,
      long: long ?? this.long,
    );
  }

  @override
  String toString() => 'LoacationState(lat: $lat, long: $long)';

  @override
  List<Object?> get props => [lat, long];
}
