part of 'spacex_launch_cubit.dart';

abstract class SpacexLaunchState extends Equatable {
  const SpacexLaunchState();
}

class SpacexLaunchInitial extends SpacexLaunchState {
  @override
  List<Object> get props => [];
}

class SpacexLaunchLoading extends SpacexLaunchState {
  @override
  List<Object> get props => [];
}

class SpacexLaunchLoaded extends SpacexLaunchState {

  final LaunchModel launchModel;
  const SpacexLaunchLoaded(this.launchModel);

  @override
  List<Object> get props => [];
}

class SpacexLaunchError extends SpacexLaunchState {
  final String message;

  const SpacexLaunchError(this.message);

  @override
  List<Object> get props => [message];
}
