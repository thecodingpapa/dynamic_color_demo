import 'package:flutter/material.dart';

class CircularBorderAvatar extends StatelessWidget {
  const CircularBorderAvatar(this.image,
      {Key? key, this.size = 32, required this.borderColor})
      : super(key: key);
  final String image;
  final double size;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          backgroundBlendMode: BlendMode.clear,
          border: Border.all(color: borderColor, width: 2),
          image: DecorationImage(image: NetworkImage(image))),
      width: size,
      height: size,
    );
  }
}
