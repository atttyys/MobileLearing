import 'package:flutter/material.dart';
import 'main.dart';
class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites Page'),
        backgroundColor: Colors.blue.shade700,
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
