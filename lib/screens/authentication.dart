import 'package:authtentications/common/common.dart';
import 'package:authtentications/router/router.dart';
import 'package:authtentications/screens/fade_animationtest.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/img.png",
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: SizedBox(
              child: Column(
                children: [
                  FadeAnimation(
                    delay: 1.5,
                    child: Text(
                      "",
                      style: Common().titelTheme,
                    ),
                  ),
                  const SizedBox(height: 60),
                  FadeAnimation(
                    delay: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        GoRouter.of(context).pushNamed(Routers.loginPage.name);
                      },
                      style: ButtonStyle(
                        side: const WidgetStatePropertyAll(
                              BorderSide(color: Colors.black)),
                          shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          fixedSize: const WidgetStatePropertyAll(
                              Size.fromWidth(370)),
                          padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 20),
                          ),
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.black)
                      ),
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
                  const SizedBox(height: 20),
                  FadeAnimation(
                    delay: 2.5,
                    child: ElevatedButton(
                      onPressed: () {
                        GoRouter.of(context).pushNamed(Routers.signuppage.name);
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
                              const WidgetStatePropertyAll(Colors.white)),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Urbanist-SemiBold",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  FadeAnimation(
                    delay: 2.5,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Continue as guest",
                          style: Common().mediumTheme),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
