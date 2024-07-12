import 'package:flutter/material.dart';
import 'package:ui/core/themes/styles.dart';
import 'package:ui/features/Favorite/favorite_list_tile.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const FavoriteListTile(),
      appBar: AppBar(
        title: Text('Favorite', style: MyStyles.font20OrangeW700),
        centerTitle: true,
      ),
    );
  }
}
