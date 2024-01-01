import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_api/presentation/home_screen/widgets/home_screen_cart.dart';
import 'package:flutter_bloc_with_api/res/colors.dart';

import '../../cubit/home/home_cubit.dart';
import '../../data/model/video_model_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<HomeCubit>(context,
        listen: true); //////// bloc instance

    return Scaffold(
      backgroundColor: AppColor.primaryWiteColor,
      appBar: AppBar(
        title: const Text("Trending video"),
        forceMaterialTransparency: true,
      ),

      /////////// bloc builder function call
      body: BlocBuilder(
          bloc: HomeCubit(),
          builder: (context, state) {
            return bloc.isLoading
                ? const Center(
                    ///// loading sign show data fetch time
                    child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  ))

                ///////// data fetch than show builder method call
                : ListView.builder(
                    itemCount: bloc.state.length,
                    itemBuilder: (context, index) {
                      VideoDataResults data =
                          bloc.state[index]; ////// separate data

                      return HomeScreenCart(
                        //////// home cart widget call
                        videoDataResults: data,
                      );
                    },
                  );
          }),
    );
  }
}
