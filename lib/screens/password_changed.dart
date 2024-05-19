import 'package:authtentications/common/common.dart';
import 'package:authtentications/router/router.dart';
import 'package:authtentications/screens/fade_animationtest.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({super.key});

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECF4),
      body: SafeArea(
        child: Column(
          children: [
            LottieBuilder.asset("assets/images/ticker.json"),
            FadeAnimation(
              delay: 1,
              child: Text(
                "Password changed",
                style: Common().titelTheme,
              ),
            ),
            FadeAnimation(
              delay: 1.5,
              child: Text(
                "Your password has been changed successfully",
                style: Common().mediumThemeblack,
              ),
            ),
            const SizedBox(height: 30),
            FadeAnimation(
              delay: 2,
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement(Routers.loginPage.name);
                },
                style: ButtonStyle(
                    side: const WidgetStatePropertyAll(
                        BorderSide(color: Colors.blueGrey)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    fixedSize:
                        const WidgetStatePropertyAll(Size.fromWidth(370)),
                    padding: const WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 20),
                    ),
                    backgroundColor:
                        const WidgetStatePropertyAll(Colors.black)),
                child: const Text(
                  "Back to login",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Urbanist-SemiBold",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
