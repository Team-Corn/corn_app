import 'package:flutter/material.dart';
import 'package:plog_in/feature/main/shared/comment_cell.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';
import 'package:plog_in/shared/theme/plog_in_images.dart';

class InCommunityView extends StatelessWidget {
  const InCommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(right: 210),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(
                    width: 54,
                    height: 54,
                    child: Image(image: PloginImage.profilePlaceholder.image),
                  ),
                  Column(
                    children: [
                      Text(
                        '김호준',
                        style: TextStyle(
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: PlogInColors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Text(
                          '2024.7.16',
                          style: TextStyle(
                            fontFamily: "Pretendard",
                            fontSize: 12,
                            color: PlogInColors.darkGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: SizedBox(
                  width: 330,
                  child: Text(
                    '저 대구소프트웨어마이스터고등학교 주변에서 쓰레기 이만큼 주웠어요!!',
                    style: TextStyle(
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: PlogInColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(right: 215),
                child: Text(
                  '쓰레기 엄청 많이 주웠어요',
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: PlogInColors.black,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 373,
                height: 1,
                color: PlogInColors.gray,
              ),
              SizedBox(height: 20),
              for (int i = 0; i < 20; i++)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: CommentCell(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
