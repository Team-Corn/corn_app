import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/feature/main/profile/ui/profile_view.dart';
import 'package:plog_in/feature/main/ranking/component/ranking_cell.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';

class RankingView extends StatelessWidget {
  const RankingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(right: 240),
          child: Text(
            '랭킹',
            style: TextStyle(
              fontFamily: "Pretendard",
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: PlogInColors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              for (int i = 0; i < 20; i++)
                CupertinoButton(
                  child: Row(
                    children: [
                      Text(
                        '${i+1}',
                        style: TextStyle(
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: PlogInColors.black,
                        ),
                      ),
                      SizedBox(width: 14),
                      RankingCell(),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ProfileView(),
                      ),
                    );
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
