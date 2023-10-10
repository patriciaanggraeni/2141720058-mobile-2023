import 'package:flutter/material.dart';

class TextSection {

  Widget textSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        "Air Terjun Seweru terletak di lereng Gunung Wilis setinggi 400 m dari permukaan laut."
        "Sumber air terjun itu berasal dari bawah gunung dan muncul di atas pohon rindang. Tempat"
        "ini terletak sekitar 25 km dari kota Madiun sampai ke timur tepat di desa Kare, Kecamatan Kare."
        "Objek wisata ini kerap dikunjungi para remaja dan pemerhati lingkungan karena panorama yang indah"
        "dan mencengangkan.",
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
  }

}