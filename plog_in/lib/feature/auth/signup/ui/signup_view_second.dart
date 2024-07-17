import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/shared/component/plog_in_button.dart';
import 'package:plog_in/feature/auth/shared/component/plog_in_textfield.dart';
import 'package:plog_in/feature/auth/signup/ui/signup_view_thrid.dart';

class SignupViewSecond extends StatefulWidget {
  const SignupViewSecond({super.key});

  @override
  State<SignupViewSecond> createState() => _SignupViewSecondState();
}

class _SignupViewSecondState extends State<SignupViewSecond> {
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _genderEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.chevron_left,
            color: Color(0xffAAAAAA),
            size: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(right: 90),
              child: Text(
                '회원가입에 필요한\n이메일과 성별을 입력해주세요.',
                style: TextStyle(
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PlogInTextfield(
                textEditingController: _emailEditingController,
                placeHolderText: '이메일',
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PlogInTextfield(
                textEditingController: _genderEditingController,
                placeHolderText: '성별',
              ),
            ),
            Spacer(flex: 1),
            PlogInButton(
                buttonText: '다음',
                action: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const SignupViewThird()));
                }),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
