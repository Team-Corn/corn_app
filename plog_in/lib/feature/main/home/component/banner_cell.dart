import 'package:flutter/material.dart';

class BannerCell extends StatelessWidget {
  const BannerCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('제목'),
          Text('신청마감'),
          Text('마감일'),
          Text('신청인원'),
          Text('n'),
        ],
      ),
    );
  }
}
