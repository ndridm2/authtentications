class AppRouter {
  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}

class Routers {
  static AppRouter authenticationpage = AppRouter(name: "/", path: "/");
  static AppRouter loginPage = AppRouter(name: "/login", path: "/login");
  static AppRouter signuppage = AppRouter(name: "/signup", path: "/signup");
  static AppRouter forgetPassword = AppRouter(name: "/forgetPassword", path: "/forgetPassword");
  static AppRouter newPassword = AppRouter(name: "/newPassword", path: "/newPassword");
  static AppRouter otpVerification = AppRouter(name: "/otpVerification", path: "/otpVerification");
  static AppRouter passwordChanges = AppRouter(name: "/passwordChanges", path: "/passwordChanges");
  static AppRouter dashboardPage = AppRouter(name: "/dashboardPage", path: "/dashboardPage");
  static AppRouter profilePage = AppRouter(name: "/profilePage", path: "/profilePage");

}