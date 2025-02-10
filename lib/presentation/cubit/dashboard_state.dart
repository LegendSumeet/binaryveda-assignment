
part of 'dashboard_cubit.dart';

enum DataStatus { initial, loading, success, failure }

class DashboardState {
  final DataStatus status;
  final List<PhotoModel> photos;

  DashboardState({required this.status, required this.photos});

  factory DashboardState.initial() {
    return DashboardState(status: DataStatus.initial, photos: []);
  }

  DashboardState copyWith({DataStatus? status, List<PhotoModel>? photos}) {
    return DashboardState(
      status: status ?? this.status,
      photos: photos ?? this.photos,
    );
  }
}
