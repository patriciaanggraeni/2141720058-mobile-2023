import 'package:flutter/material.dart';

class PraktikumSatu {

  Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* Soal No. 1 */
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /* Soal No. 2 */
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      "Wisata Gunung di Batu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const Text(
                    "Batu, Malang, Indonesia",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
          ),
          /* Soal No. 3 */
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("41"),
        ],
      )
  );
}