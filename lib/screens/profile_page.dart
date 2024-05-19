import 'package:authtentications/router/router.dart';
import 'package:authtentications/widgets/increasing_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Iconsax.arrow_circle_left),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Iconsax.setting),
                ),
              ],
            ),
          ),
          Center(
            child: FractionallySizedBox(
              widthFactor: .6,
              child: Hero(
                tag: const Key("image"),
                child: Container(
                  height: 280,
                  width: 280,
                  decoration: ShapeDecoration(
                    shape: const StarBorder(
                      innerRadiusRatio: .9,
                      pointRounding: .2,
                      points: 10,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/model.JPG'),
                    ),
                    shadows: [
                      BoxShadow(
                        blurRadius: 120,
                        color: Colors.black.withOpacity(.8),
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(.5),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Text(
            "Andri Dm",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(122),
              color: Colors.deepPurple.shade50,
            ),
            child: const Text(
              "Advanced",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IncreasingText(
                    50,
                    suffix: "M",
                    isSingle: false,
                    style: TextStyle(
                      color: Colors.deepPurple.shade500,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    "Activity",
                    style: TextStyle(color: Colors.deepPurple.shade500),
                  ),
                ],
              ),
              const SizedBox(width: 40),
              Column(
                children: [
                  IncreasingText(
                    80,
                    isSingle: true,
                    style: TextStyle(
                      color: Colors.deepPurple.shade500,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    "Task",
                    style: TextStyle(color: Colors.deepPurple.shade500),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 100,
                  ),
                ],
              ),
              child: Column(
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: const ListTile(
                      leading: Icon(
                        Iconsax.verify5,
                        size: 35,
                        color: Colors.blue,
                      ),
                      title: Text(
                        "Become A Pro Member",
                        style: TextStyle(color: Colors.blue),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: const ListTile(
                      leading: Icon(
                        Iconsax.activity,
                        size: 30,
                        color: Colors.deepPurple,
                      ),
                      title: Text(
                        "Activity of Member",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: const ListTile(
                      leading: Icon(
                        Iconsax.book,
                        size: 30,
                        color: Colors.green,
                      ),
                      title: Text(
                        "WorkOut Plans",
                        style: TextStyle(color: Colors.green),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: const Text('You have logged out!'),
                        action: SnackBarAction(
                          label: 'Login',
                          onPressed: () {},
                        ),
                      );

                      GoRouter.of(context)
                          .push(Routers.authenticationpage.name);

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    padding: EdgeInsets.zero,
                    child: const ListTile(
                      leading: Icon(
                        Iconsax.logout,
                        size: 30,
                        color: Colors.red,
                      ),
                      title: Text(
                        "Logout",
                        style: TextStyle(color: Colors.red),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
