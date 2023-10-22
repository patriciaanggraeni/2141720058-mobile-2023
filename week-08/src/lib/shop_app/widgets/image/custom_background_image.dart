import 'package:flutter/material.dart';
import 'package:src/shop_app/model/game.dart';

class CustomGameImageBackground extends StatelessWidget {
  const CustomGameImageBackground({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {

    return ShaderMask(
      shaderCallback: (Rect shape) {
        return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.black]).createShader(shape);
      },
      blendMode: BlendMode.dstIn,
      child: ColorFiltered(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        child: Hero(
          tag: 'game_cover_${items.image}',
          child: Image.asset(
            items.image,
            fit: BoxFit.cover,
            height: 350,
          ),
        ),
      ),
    );
  }
}
