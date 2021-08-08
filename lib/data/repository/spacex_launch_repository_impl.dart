import 'spacex_launch_repository.dart';

class SpaceXLaunchRepositoryImpl implements SpaceXLaunchRepository {
  static final SpaceXLaunchRepositoryImpl _singleton = SpaceXLaunchRepositoryImpl._internal();
  factory SpaceXLaunchRepositoryImpl() {
    return _singleton;
  }
  SpaceXLaunchRepositoryImpl._internal();


// todo create data getter and decoder methods
}

