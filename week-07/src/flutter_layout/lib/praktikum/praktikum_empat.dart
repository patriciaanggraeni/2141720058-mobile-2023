import 'package:flutter/cupertino.dart';

class ImageSection {
  Image imageSection() {
    return const Image(
      image: AssetImage("assets/images/wisata_alam_air_terjun_seweru.png"),
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
