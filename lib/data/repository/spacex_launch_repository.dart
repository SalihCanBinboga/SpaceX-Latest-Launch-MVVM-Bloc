import 'package:spacex_latest_launch/data/models/launch_model.dart';

abstract class SpaceXLaunchRepository{
  Future<LaunchModel> getLatestLaunch();
}