import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  const RedTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return const AutoSizeText(
      "Patria Anggara Susilo Putra",
      style: TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
