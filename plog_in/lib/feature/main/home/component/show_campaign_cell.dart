import 'package:flutter/material.dart';

class ShowCampaignCell extends StatelessWidget {
  const ShowCampaignCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Text('제목'),
          Text('내용'),
          Row(
            children: [
              Text('기간'),
              Text('참여인원'),
            ],
          ),
        ],
      ),
    );
  }
}
