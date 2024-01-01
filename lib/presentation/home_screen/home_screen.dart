import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_api/presentation/home_screen/widgets/home_screen_cart.dart';

import '../../cubit/home/home_cubit.dart';
import '../../data/model/video_model_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<HomeCubit>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text("Trending video"),
      ),
      body: BlocBuilder(
          bloc: HomeCubit(),
          builder: (context, state) {
            return bloc.isLoading
                ? const Center(
                    child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  ))
                : ListView.builder(
                    itemCount: bloc.state.length,
                    itemBuilder: (context, index) {
                      VideoDataResults data = bloc.state[index];

                      return HomeScreenCart(
                        videoDataResults: data,
                      );
                    },
                  );
          }),
    );
  }
}
