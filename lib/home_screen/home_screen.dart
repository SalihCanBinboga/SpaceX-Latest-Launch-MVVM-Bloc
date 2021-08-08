import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_latest_launch/data/data_providers/remote/spacex_api.dart';
import 'package:spacex_latest_launch/data/repository/spacex_launch_repository_impl.dart';
import 'package:spacex_latest_launch/home_screen/logic/spacex_launch_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => SpacexLaunchCubit(launchRepository: SpaceXLaunchRepositoryImpl(spaceXAPI: SpaceXAPI()))..fetchLatestLaunchData(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SpaceX Latest Launch'),
        ),
        body: BlocBuilder<SpacexLaunchCubit, SpacexLaunchState>(
          builder: (BuildContext context, state) {
            debugPrint('state: ${state.runtimeType}');
            if (state is SpacexLaunchInitial || state is SpacexLaunchLoading) {
              return const CircularProgressIndicator();
            } else if (state is SpacexLaunchError) {
              return Text('Getting Error: ${state.message}');
            } else if (state is SpacexLaunchLoaded) {
              return _LaunchDetailCard(size: size, state: state);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

class _LaunchDetailCard extends StatelessWidget {
  const _LaunchDetailCard({Key? key, required this.size, required this.state}) : super(key: key);

  final Size size;
  final SpacexLaunchLoaded state;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: size.width * .9,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image.network(state.launchModel.links!.patch!.small!, width: 170, height: 170),
                ),
                Center(
                  child: Text(
                    state.launchModel.name ?? 'Unable Name',
                    style: const TextStyle(
                      fontSize: 20,
                      letterSpacing: 3,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                if (state.launchModel.details != null) Text(state.launchModel.details!),
                if (state.launchModel.links!.flickr!.original != null && state.launchModel.links!.flickr!.original!.isNotEmpty)
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        final url = state.launchModel.links!.flickr!.original![index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(url, fit: BoxFit.cover),
                        );
                      },
                      itemCount: state.launchModel.links!.flickr!.original!.length,
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
