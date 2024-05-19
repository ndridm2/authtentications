import 'package:authtentications/router/router.dart';
import 'package:authtentications/screens/authentication.dart';
import 'package:authtentications/screens/dashboard_page.dart';
import 'package:authtentications/screens/forget_password.dart';
import 'package:authtentications/screens/login_page.dart';
import 'package:authtentications/screens/new_password.dart';
import 'package:authtentications/screens/otp_verification.dart';
import 'package:authtentications/screens/password_changed.dart';
import 'package:authtentications/screens/profile_page.dart';
import 'package:authtentications/screens/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: Routers.authenticationpage.path,
    name: Routers.authenticationpage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: Authentication());
    },
  ),
  GoRoute(
    path: Routers.loginPage.path,
    name: Routers.loginPage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: LoginPage());
    },
  ),
  GoRoute(
    path: Routers.signuppage.path,
    name: Routers.signuppage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: SignupPage());
    },
  ),
  GoRoute(
    path: Routers.forgetPassword.path,
    name: Routers.forgetPassword.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: ForgetPassword());
    },
  ),
  GoRoute(
    path: Routers.newPassword.path,
    name: Routers.newPassword.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: NewPassword());
    },
  ),
  GoRoute(
    path: Routers.otpVerification.path,
    name: Routers.otpVerification.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: OtpVerification());
    },
  ),
  GoRoute(
    path: Routers.passwordChanges.path,
    name: Routers.passwordChanges.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: PasswordChanged());
    },
  ),
  GoRoute(
    path: Routers.dashboardPage.path,
    name: Routers.dashboardPage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: DashboardPage());
    },
  ),
  GoRoute(
    path: Routers.profilePage.path,
    name: Routers.profilePage.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: ProfilePage());
    },
  )
]);
