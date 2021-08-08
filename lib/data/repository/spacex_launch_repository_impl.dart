import 'package:spacex_latest_launch/data/data_providers/remote/spacex_api.dart';
import 'package:spacex_latest_launch/data/models/launch_model.dart';

import 'spacex_launch_repository.dart';

class SpaceXLaunchRepositoryImpl implements SpaceXLaunchRepository {
  final SpaceXAPI _spaceXAPI;

  SpaceXLaunchRepositoryImpl({required SpaceXAPI spaceXAPI}) : _spaceXAPI = spaceXAPI;

  @override
  Future<LaunchModel> getLatestLaunch() async {
    final response = await _spaceXAPI.getLatestLaunch();
    return LaunchModel.fromRawJson(response);
  }
}
