import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  const VideoBackground(
      {super.key,
      this.colors = const [Colors.transparent, Colors.black87],
      this.stops = const [0.0, 0.1]})
      : assert(colors.length == stops.length);

  final List<Color> colors;
  final List<double> stops;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
        stops: stops,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
    ));
  }
}
