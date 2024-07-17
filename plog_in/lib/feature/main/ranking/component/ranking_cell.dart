import 'package:flutter/material.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';
import 'package:plog_in/shared/theme/plog_in_images.dart';

class RankingCell extends StatelessWidget {
  const RankingCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Image(image: PloginImage.profilePlaceholder.image),
        ),
        SizedBox(width: 8),
        Column(
          children: [
            Text(
              '김호준',
              style: TextStyle(
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: PlogInColors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6),
              child: Text(
                '온도 36.5',
                style: TextStyle(
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: PlogInColors.black,
                ),
              ),
            ),
            SizedBox(height: 6),
          ],
        )
      ],
    );
  }
}
