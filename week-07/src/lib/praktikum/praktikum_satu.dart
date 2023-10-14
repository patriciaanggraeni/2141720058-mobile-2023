import 'package:flutter/material.dart';

class FlutterLayout {

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      "Wisata Alam Air Terjun Seweru",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ),
                  const Text(
                    "Gunung Wilis, Madiun, Indonesia",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("41")
        ],
      )
    );
  }
}