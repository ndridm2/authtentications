import 'package:authtentications/common/common.dart';
import 'package:authtentications/router/router.dart';
import 'package:authtentications/screens/fade_animationtest.dart';
import 'package:authtentications/widgets/custome_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 236, 244, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeAnimation(
                delay: 0.6,
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
                      delay: 0.9,
                      child: Text(
                        "Hello, register to get ",
                        style: Common().titelTheme,
                      ),
                    ),
                    FadeAnimation(
                      delay: 1.2,
                      child: Text(
                        "Started",
                        style: Common().titelTheme,
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
                        delay: 1.5,
                        child: CustomeTextFromField(
                          hinttext: 'Username',
                          obsecuretext: false,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const FadeAnimation(
                        delay: 1.8,
                        child: CustomeTextFromField(
                          hinttext: 'Email',
                          obsecuretext: false,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const FadeAnimation(
                        delay: 2.4,
                        child: CustomeTextFromField(
                          hinttext: 'Confirm password',
                          obsecuretext: false,
                        ),
                      ),
                      const SizedBox(height: 20),
                      FadeAnimation(
                        delay: 2.7,
                        child: ElevatedButton(
                          onPressed: () {},
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
                            "Register",
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
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 160,
                  width: double.infinity,
                  child: Column(
                    children: [
                      FadeAnimation(
                        delay: 2.9,
                        child: Text(
                          "Or register with",
                          style: Common().semiboldblack,
                        ),
                      ),
                      const SizedBox(height: 20),
                      FadeAnimation(
                        delay: 3.2,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                            right: 130,
                            left: 130,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                  "assets/images/facebook_ic (1).svg"),
                              SvgPicture.asset("assets/images/google_ic-1.svg"),
                              Image.asset("assets/images/Vector.png")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                delay: 3.6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: Common().hinttext,
                      ),
                      TextButton(
                          onPressed: () {
                            GoRouter.of(context)
                                .pushNamed(Routers.loginPage.name);
                          },
                          child: Text(
                            "Login Now",
                            style: Common().mediumTheme,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
