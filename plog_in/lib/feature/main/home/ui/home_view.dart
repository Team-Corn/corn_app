import 'package:flutter/material.dart';
import 'package:plog_in/feature/main/home/component/banner_cell.dart';
import 'package:plog_in/feature/main/home/component/completed_campaign_cell.dart';
import 'package:plog_in/feature/main/home/component/show_campaign_cell.dart';
import 'package:plog_in/feature/main/home/component/temperature_cell.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('홈 뷰'),
          // TemperatureCell(),
          // Text('플로깅 한번 어떠세요?'),
          // Row(
          //   children: [
          //     BannerCell(),
          //     BannerCell(),
          //     BannerCell(),
          //     BannerCell(),
          //   ],
          // ),
          // Text('당신이 진행하는 플로깅 캠페인'),
          // ShowCampaignCell(),
          // Text('완료한 플로깅 캠페인'),
          // CompletedCampaignCell(),
          // CompletedCampaignCell(),
          // CompletedCampaignCell(),
        ],
      ),
    );
  }
}
