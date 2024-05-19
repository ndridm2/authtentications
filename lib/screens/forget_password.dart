import 'package:authtentications/common/common.dart';
import 'package:authtentications/router/router.dart';
import 'package:authtentications/screens/fade_animationtest.dart';
import 'package:authtentications/widgets/custome_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECF4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeAnimation(
                delay: 1,
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    size: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      delay: 1.3,
                      child: Text(
                        "Forgot Password?",
                        style: Common().titelTheme,
                      ),
                    ),
                    FadeAnimation(
                      delay: 1.6,
                      child: Text(
                        "Don't worry!  It occurs. Please enter the email address linked with your account.",
                        style: Common().mediumThemeblack,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  child: Column(
                    children: [
                      const FadeAnimation(
                        delay: 1.9,
                        child: CustomeTextFromField(
                          hinttext: 'Enter your email',
                          obsecuretext: false,
                        ),
                      ),
                      const SizedBox(height: 30),
                      FadeAnimation(
                        delay: 2.1,
                        child: ElevatedButton(
                          onPressed: () {
                            GoRouter.of(context)
                                .pushNamed(Routers.otpVerification.name);
                          },
                          style: ButtonStyle(
                          side: const WidgetStatePropertyAll(
                              BorderSide(color: Colors.blueGrey)),
                          shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          fixedSize: const WidgetStatePropertyAll(
                              Size.fromWidth(370)),
                          padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 20),
                          ),
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.black)),
                      child: const Text(
                        "Send Code",
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
              ),
              const Spacer(),
              FadeAnimation(
                delay: 2.4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Common().hinttext,
                      ),
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context)
                              .pushNamed(Routers.signuppage.name);
                        },
                        child: Text(
                          "Register now",
                          style: Common().mediumTheme,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
