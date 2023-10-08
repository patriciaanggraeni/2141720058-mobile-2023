import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ClipOval(
      child: Image(
        image: AssetImage("assets/image.jpeg"),
        width: 175,
        height: 175,
        fit: BoxFit.cover,
      )
    );
  }
}
