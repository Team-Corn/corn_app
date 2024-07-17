import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/feature/auth/signup/repository/signup_repository.dart';
import 'package:plog_in/shared/component/plog_in_button.dart';
import 'package:plog_in/feature/auth/shared/component/plog_in_textfield.dart';
import 'package:plog_in/feature/auth/signup/ui/signup_view_second.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  // final SignupRepository _repository = SignupRepositoryImpl();

  TextEditingController _nameEditingController = TextEditingController();
  TextEditingController _birthEditingController = TextEditingController();

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
                '회원가입에 필요한\n이름과 생년월일을 입력해주세요.',
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
                textEditingController: _nameEditingController,
                placeHolderText: '이름',
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PlogInTextfield(
                textEditingController: _birthEditingController,
                placeHolderText: '생년월일',
              ),
            ),
            Spacer(flex: 1),
            PlogInButton(
                buttonText: '다음',
                action: () {
                  // _repository.register(signupRequest: signupRequest)
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => SignupViewSecond()));
                }),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
