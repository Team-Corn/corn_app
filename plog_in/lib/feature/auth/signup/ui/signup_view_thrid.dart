import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plog_in/feature/auth/signup/model/signup_request.dart';
import 'package:plog_in/feature/auth/signup/repository/signup_repository.dart';
import 'package:plog_in/feature/main/navigation/ui/navigation_view.dart';
import 'package:plog_in/shared/component/plog_in_button.dart';
import 'package:plog_in/feature/auth/shared/component/plog_in_textfield.dart';

class SignupViewThird extends StatefulWidget {
  const SignupViewThird({super.key});

  @override
  State<SignupViewThird> createState() => _SignupViewThirdState();
}

class _SignupViewThirdState extends State<SignupViewThird> {
  // final SignupRepository _repository = SignupRepositoryImpl();

  TextEditingController _idEditingController = TextEditingController();
  TextEditingController _pwEditingController = TextEditingController();
  TextEditingController _pwcheckEditingController = TextEditingController();

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
              padding: EdgeInsets.only(right: 70),
              child: Text(
                '회원가입에 필요한\n아이디와 비밀번호를 입력해주세요.',
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
                textEditingController: _idEditingController,
                placeHolderText: '아이디',
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PlogInTextfield(
                textEditingController: _pwEditingController,
                placeHolderText: '비밀번호',
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PlogInTextfield(
                textEditingController: _pwcheckEditingController,
                placeHolderText: '비밀번호 확인',
              ),
            ),
            Spacer(flex: 1),
            PlogInButton(buttonText: '시작하기', action: () {
              // print("회원 가입 완료");
              // _repository.register(signupRequest: SignupRequest(id: "조영우", password: "1234", confirmPassword: "1234", email: "youngwoo@dgsw.hs.kr", name: "조영우", birth: "0328", gender: "male"));
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const NavigationView()));
            }),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}