import 'package:flutter/material.dart';
import 'package:plog_in/feature/main/profile/component/profile_info_cell.dart';
import 'package:plog_in/feature/main/profile/component/profile_record_cell.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';
import 'package:plog_in/shared/theme/plog_in_images.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image(image: PloginImage.profilePlaceholder.image),
              ),
              Column(
                children: [
                  Text('아이디'),
                  Text('온도'),
                ],
              ),
              for (int i = 0; i < 4; i++) ProfileInfoCell(),
              Container(
                width: 373,
                height: 1,
                color: PlogInColors.gray,
              ),
              for (int i = 0; i < 20; i++) ProfileRecordCell(),
            ],
          )
        ],
      ),
    );
  }
}
