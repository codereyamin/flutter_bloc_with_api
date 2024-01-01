import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/presentation/home_screen/widgets/home_screen_cart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending video"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return HomeScreenCart();
        },
      ),
    );
  }
}
