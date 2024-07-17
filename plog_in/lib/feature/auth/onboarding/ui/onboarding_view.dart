import 'package:flutter/material.dart';
import 'package:plog_in/shared/component/plog_in_button.dart';
import 'package:plog_in/feature/auth/signin/ui/signin_view.dart';
import 'package:plog_in/feature/auth/signup/ui/signup_view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Text(
              "PlogIn",
              style: TextStyle(
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
            Spacer(flex: 1),
            PlogInButton(
                buttonText: '로그인',
                action: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignInView()));
                }),
            SizedBox(height: 10),
            PlogInButton(
                buttonText: '회원가입',
                action: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignupView()));
                }),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
