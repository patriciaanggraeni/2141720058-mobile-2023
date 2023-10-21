import 'package:flutter/material.dart';
import 'package:src/shop_app/model/game.dart';
import 'package:src/shop_app/seeder/helper.dart';

class GameShopPage extends StatelessWidget {
  const GameShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ModalRoute.of(context)!.settings.arguments as Game;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Game Detail"),
          titleTextStyle: Helper.customStyleFonts(
            size: 17,
            weigth: FontWeight.bold,
            spacing: 1.2,
            color: Colors.white
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              ShaderMask(
                  shaderCallback: (Rect shape) {
                    return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent]
                    ).createShader(shape);
                  },
                blendMode: BlendMode.dstIn,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.hardLight
                  ),
                  child: Image(
                    image:NetworkImage(items.image),
                    width: double.infinity,
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}