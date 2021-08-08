import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spacex_latest_launch/data/models/launch_model.dart';
import 'package:spacex_latest_launch/data/repository/spacex_launch_repository.dart';

part 'spacex_launch_state.dart';

class SpacexLaunchCubit extends Cubit<SpacexLaunchState> {
  SpacexLaunchCubit({required SpaceXLaunchRepository launchRepository})
      : _launchRepository = launchRepository,
        super(SpacexLaunchInitial());

  final SpaceXLaunchRepository _launchRepository;

  Future<void> fetchLatestLaunchData() async {
    try {
      final launchModel = await _launchRepository.getLatestLaunch();
      emit(SpacexLaunchLoaded(launchModel));
    } catch (e) {
      emit(SpacexLaunchError(e.toString()));
    }
  }
}
