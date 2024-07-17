import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/shared/theme/plog_in_colors.dart';

class PlogInButton extends StatelessWidget {
  final String buttonText;
  final Function action;

  const PlogInButton({
    super.key,
    required this.buttonText,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        width: 342,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: PlogInColors.lightGreen,
        ),
        padding: EdgeInsets.zero,
        child: Center(
          child: Text(
            "$buttonText",
            style: const TextStyle(
                fontSize: 16,
                fontFamily: "Pretendard",
                color: PlogInColors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onPressed: () {
        // print('action 실행됨');
        action();
      },
    );
  }
}
