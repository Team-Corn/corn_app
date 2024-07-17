import 'package:flutter/material.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';
import 'package:plog_in/shared/theme/plog_in_images.dart';

class CampaignCell extends StatelessWidget {
  const CampaignCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 170,
      color: PlogInColors.white,
      child: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.all(Radius.circular(12)),
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: PlogInColors.white),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 16),
                SizedBox(
                  width: 56,
                  height: 56,
                  child: Image(image: PloginImage.profilePlaceholder.image),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '대소마고 플로깅',
                        style: TextStyle(
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: PlogInColors.black,
                        ),
                      ),
                    ),
                    Text(
                      '2024.7.16 - 15:00',
                      style: TextStyle(
                        fontFamily: "Pretendard",
                        fontSize: 12,
                        color: PlogInColors.gray,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                '오늘 오후 3시에 저랑 대구소프트웨어마이스터고등학교에서 홈푸드까지 플로깅하러 가실 분 계신가요? 오늘 오후 3시에 저랑 대구소프트웨어마이스터고등학교에서 홈푸드까지 플로깅하러 가실 분 계신가요? 오늘 ...',
                style: TextStyle(
                  fontFamily: "Pretendard",
                  fontSize: 12,
                  color: PlogInColors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    '참여 인원 수',
                    style: TextStyle(
                      fontFamily: "Pretendard",
                      fontSize: 12,
                      color: PlogInColors.black,
                    ),
                  ),
                  Spacer(flex: 1),
                  Text(
                    '생성자 이름',
                    style: TextStyle(
                      fontFamily: "Pretendard",
                      fontSize: 12,
                      color: PlogInColors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
