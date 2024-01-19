import 'package:flutter/material.dart';
import 'package:showtime/Config/configColor.dart';

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({super.key, this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          size: 16,
          color: ConfigColor.secondary,
        );
      }),
    );
  }
}