import 'package:flutter/material.dart';
import '../model/game.dart';

class ItemSeeder {

  List<Game> listGame() {
    return [
      Game(
          name: "Call of Duty: WWII",
          price: 300000,
          image: "https://w.wallhaven.cc/full/g8/wallhaven-g86ogd.jpg",
          stock: 75,
          rating: 4.4
      ),
      Game(
          name: "Minecraft",
          price: 250000,
          image: "https://w.wallhaven.cc/full/o3/wallhaven-o31p97.jpg",
          stock: 100,
          rating: 4.5
      ),
      Game(
          name: "God of War: Ragnarok",
          price: 800000,
          image: "https://w.wallhaven.cc/full/w8/wallhaven-w8pydp.jpg",
          stock: 120,
          rating: 4.6
      ),
      Game(
          name: "Battlefield V",
          price: 590000,
          image: "https://w.wallhaven.cc/full/5d/wallhaven-5d1889.jpg",
          stock: 50,
          rating: 5.0
      ),
      Game(
          name: "Stray",
          price: 273000,
          image: "https://w.wallhaven.cc/full/1p/wallhaven-1p89z1.jpg",
          stock: 150,
          rating: 4
      ),
      Game(
          name: "Tekken 7",
          price: 400000,
          image: "https://w.wallhaven.cc/full/6q/wallhaven-6qgdk7.jpg",
          stock: 200,
          rating: 4.4
      ),
    ];
  }
}