import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/feature/main/campaign/component/campaign_cell.dart';
import 'package:plog_in/feature/main/campaign/ui/in_campagin_view.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';

class CampaignView extends StatelessWidget {
  const CampaignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PlogInColors.green,
      appBar: AppBar(
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(right: 240),
          child: Text(
            '캠페인',
            style: TextStyle(
              fontFamily: "Pretendard",
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: PlogInColors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              for (int i = 0; i < 20; i++)
                CupertinoButton(
                  child: CampaignCell(),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => InCampaginView()));
                  },
                ),
              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}
