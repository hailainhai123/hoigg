import 'package:get/get.dart';
import 'package:hoigg/pages/account/account_page.dart';
import 'package:hoigg/pages/authen/register_page.dart';
import 'package:hoigg/pages/blog/blog_page.dart';
import 'package:hoigg/pages/category/category_page.dart';
import 'package:hoigg/pages/notification/notification_page.dart';
import 'package:hoigg/pages/welcome/welcome_page.dart';
import 'package:hoigg/utils/global_binding.dart';

import '../middleware/authen_middleware.dart';
import '../pages/authen/bindings/authen_binding.dart';
import '../pages/authen/login_page.dart';
import '../pages/drawer/menu_page.dart';
import '../pages/home/home_page.dart';

const String kWelcome = '/';
const String kAuthenticate = '/auth';

const String kHome = '/home';
const String kRegister = '/auth/register';
const String kNotification = '/notification';
const String kBlog = '/blog';
const String kCategory = '/category';
const String kAccount = '/account';
const String kMenu = '/menu';

final welcomePage = GetPage(
    name: kWelcome, page: () => const WelcomePage(), binding: GlobalBindings());

final homePage = GetPage(name: kHome, page: () => const HomePage());
final menuPage = GetPage(name: kMenu, page: () => MenuPage());
final notification = GetPage(
    name: kNotification,
    page: () => const NotificationPage(),
    middlewares: [EnsureAuthMiddleware()]);
final blogPage = GetPage(name: kBlog, page: () => const BlogPage());
final categoryPage = GetPage(name: kCategory, page: () => const CategoryPage());
final accountPage = GetPage(name: kAccount, page: () => const AccountPage());

final authPages = GetPage(
  name: kAuthenticate,
  page: () => const LoginPage(),
  bindings: [AuthenBlinding()],
  middlewares: [
    EnsureNotAuthedMiddleware()
  ],
  children: [
    GetPage(
      name: '/register',
      page: () => const RegisterPage(),
    )
  ],
);

final List<GetPage> pages = [
  welcomePage,
  authPages,
  homePage,
  menuPage,
  notification,
  blogPage,
  categoryPage,
  accountPage
];
