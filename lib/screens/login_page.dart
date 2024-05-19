import 'package:authtentications/common/common.dart';
import 'package:authtentications/router/router.dart';
import 'package:authtentications/screens/fade_animationtest.dart';
import 'package:authtentications/widgets/custome_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECF4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeAnimation(
                delay: 1,
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context)
                        .pushNamed(Routers.authenticationpage.name);
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
                        "Welcome back! Glad ",
                        style: Common().titelTheme,
                      ),
                    ),
                    FadeAnimation(
                      delay: 1.6,
                      child: Text(
                        "to see me again.",
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
                        delay: 1.9,
                        child: CustomeTextFromField(
                          hinttext: 'Enter your email',
                          obsecuretext: false,
                        ),
                      ),
                      const SizedBox(height: 10),
                      FadeAnimation(
                        delay: 2.2,
                        child: TextFormField(
                          obscureText: flag ? true : false,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(18),
                            hintText: "Enter your password",
                            hintStyle: Common().hinttext,
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(12)),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove_red_eye_outlined),
                            ),
                          ),
                        ),
                      ),
                      FadeAnimation(
                        delay: 2.5,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              GoRouter.of(context)
                                  .pushNamed(Routers.forgetPassword.name);
                            },
                            child: Text(
                              "Forget password?",
                              style: Common().semiboldblack,
                            ),
                          ),
                        ),
                      ),
                      FadeAnimation(
                        delay: 2.8,
                        child: ElevatedButton(
                          onPressed: () {
                            GoRouter.of(context).pushNamed(Routers.dashboardPage.name);
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
                        "Login",
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
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: [
                      FadeAnimation(
                        delay: 2.2,
                        child: Text(
                          "Or log with",
                          style: Common().semiboldblack,
                        ),
                      ),
                      const SizedBox(height: 20),
                      FadeAnimation(
                        delay: 2.4,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 130, left: 130),
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
                delay: 2.8,
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
                            "Register Now",
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
