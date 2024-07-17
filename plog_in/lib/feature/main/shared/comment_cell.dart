import 'package:flutter/material.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';
import 'package:plog_in/shared/theme/plog_in_images.dart';

class CommentCell extends StatelessWidget {
  const CommentCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        SizedBox(
          width: 56,
          height: 56,
          child: Image(image: PloginImage.profilePlaceholder.image),
        ),
        Column(
          children: [
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  '김호준',
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: PlogInColors.black,
                  ),
                ),
                Text(
                  '2024.7.16',
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: PlogInColors.darkGray,
                  ),
                ),
                SizedBox(width: 170),
              ],
            ),
            Text(
                '저도 가서 함께 하고 싶어요 저도 가서 함께 플로깅\n저도 가서 함께 하고 싶어요저도 가서 함께 플로깅',
              style: TextStyle(
                fontFamily: "Pretendard",
                fontSize: 12,
                color: PlogInColors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
