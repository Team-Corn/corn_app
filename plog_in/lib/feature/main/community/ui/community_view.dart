import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/feature/main/community/component/community_cell.dart';
import 'package:plog_in/feature/main/community/ui/in_community_view.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(right: 220),
          child: Text(
            '커뮤니티',
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
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 260),
                child: Text(
                  '지역 - 경상도',
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: PlogInColors.black,
                  ),
                ),
              ),
              for (int i = 0; i < 20; i++)
                CupertinoButton(
                    child: CommunityCell(),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => InCommunityView(),
                        ),
                      );
                    }),
              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}
