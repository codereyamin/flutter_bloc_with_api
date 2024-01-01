import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_api/presentation/home_screen/home_screen.dart';
import 'package:flutter_bloc_with_api/res/theme_data.dart';
import 'cubit/home/home_cubit.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc with api',
        theme: themeData,
        initialRoute: HomeScreen.routeName,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
