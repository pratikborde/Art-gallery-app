import 'package:flutter/material.dart';

class ImageWithBorderRadius extends StatelessWidget {
  const ImageWithBorderRadius({
    Key key,
    @required this.src,
    @required this.radius,
    @required this.dimension,
  }) : super(key: key);

  final String src;
  final double radius;
  final double dimension;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(radius),
      ),
      child: Image.network(
        src,
        alignment: Alignment.topCenter,
        fit: BoxFit.cover,
        width: dimension,
        height: dimension,
      ),
    );
  }
}
