import 'package:flutter/material.dart';

class ProfileInfoCell extends StatelessWidget {
  const ProfileInfoCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('나이 : n살'),
      ],
    );
  }
}
