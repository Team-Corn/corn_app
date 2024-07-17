import 'package:flutter/material.dart';

class TemperatureCell extends StatelessWidget {
  const TemperatureCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Text('내온도'),
          Text('n도'),
        ],
      ),
    );
  }
}
