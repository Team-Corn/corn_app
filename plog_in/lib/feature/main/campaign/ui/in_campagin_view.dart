import 'package:flutter/material.dart';
import 'package:plog_in/feature/main/shared/comment_cell.dart';
import 'package:plog_in/shared/component/plog_in_button.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';
import 'package:plog_in/shared/theme/plog_in_images.dart';

class InCampaginView extends StatelessWidget {
  const InCampaginView({super.key});

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  SizedBox(
                    width: 58,
                    height: 58,
                    child: Image(image: PloginImage.profilePlaceholder.image),
                  ),
                  SizedBox(width: 14),
                  Column(
                    children: [
                      Text(
                        '대소마고 플로깅',
                        style: TextStyle(
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: PlogInColors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Text(
                          '2024.7.16 - 15:00',
                          style: TextStyle(
                            fontFamily: "Pretendard",
                            fontSize: 8,
                            color: PlogInColors.darkGray,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 75),
                        child: Text(
                          '김호준',
                          style: TextStyle(
                            fontFamily: "Pretendard",
                            fontSize: 10,
                            color: PlogInColors.darkGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(110, 0, 0, 30),
                    child: Text(
                      'n명 참여중',
                      style: TextStyle(
                        fontFamily: "Pretendard",
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: PlogInColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '오늘 오후 3시에 저랑 대구소프트웨어마이스터고등학교에서 홈푸드까지 플로깅하러 가실 분 계신가요? 오늘 오후 3시에 저랑 대구소프트웨어마이스터고등학교에서 홈푸드까지 플로깅하러 가실 분 계신가요? 오늘 오후 3시에 저랑 대구소',
                  style: TextStyle(
                      fontFamily: "Pretendard",
                      fontSize: 13,
                      color: PlogInColors.black,
                      height: 1.2),
                ),
              ),
              SizedBox(height: 20),
              PlogInButton(
                  buttonText: '참여하기',
                  action: () {
                    print('참여하기 button clicked!');
                  }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: 373,
                  height: 1,
                  color: PlogInColors.gray,
                ),
              ),
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
