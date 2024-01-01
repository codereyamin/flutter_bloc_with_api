import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/video_model_data.dart';
import '../../repository/home_screen_repo.dart';

class HomeCubit extends Cubit<List<VideoDataResults>> {
  bool isLoading = true;
  HomeCubit() : super([]) {
    fetchData();
  }

  fetchData() async {
    print("call data");
    var data = await HomeScreenRepo().fetchData();
    if (data != null || data.isNotEmpty) {
      emit(data);
      isLoading = false;
    }
  }
}
