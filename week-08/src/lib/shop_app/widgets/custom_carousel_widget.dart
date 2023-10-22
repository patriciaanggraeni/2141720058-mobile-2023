import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:src/shop_app/model/game.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {

    return CarouselSlider(
      items: items.gameDemoImage.map((image) => Builder(builder: (context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image(
              image: NetworkImage(image),
            ),
          );
        },
      ),
    ).toList(),
    options: CarouselOptions(
      height: 170,
      enlargeCenterPage: true,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 5),
      autoPlayAnimationDuration: const Duration(seconds: 2),
      autoPlayCurve: Curves.fastOutSlowIn,
      initialPage: 0,
      enableInfiniteScroll: true),
    );
  }
}
