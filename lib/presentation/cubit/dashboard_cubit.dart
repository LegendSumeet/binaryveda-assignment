
import 'package:binaryveda/data/models/photo_model.dart';
import 'package:binaryveda/data/repositories/photo_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final PhotoRepository photoRepository;

  DashboardCubit(this.photoRepository) : super(DashboardState.initial());

  Future<void> loadPhotos() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final photos = await photoRepository.getPhotos();
      emit(state.copyWith(status: DataStatus.success, photos: photos));
    } catch (_) {
      emit(state.copyWith(status: DataStatus.failure));
    }
  }
}