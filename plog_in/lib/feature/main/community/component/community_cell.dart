import 'package:flutter/material.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';
import 'package:plog_in/shared/theme/plog_in_icons.dart';
import 'package:plog_in/shared/theme/plog_in_images.dart';

class CommunityCell extends StatelessWidget {
  const CommunityCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(image: PloginImage.profilePlaceholder.image),
                ),
                SizedBox(width: 10),
                Text(
                  '저 대구소프트웨어마이스터고등학교\n주변에서 쓰레기 이만큼 주웠어요!!',
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: PlogInColors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                Text(
                  '김호준 • 2024.7.16',
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    fontSize: 10,
                    color: PlogInColors.darkGray,
                  ),
                ),
                Spacer(flex: 1),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: PloginIcons.community,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '${2}',
                      style: TextStyle(
                        fontFamily: "Pretendard",
                        fontSize: 13,
                        color: PlogInColors.darkGray,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 373,
            height: 1,
            color: PlogInColors.gray,
          )
        ],
      ),
    );
  }
}
