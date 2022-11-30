import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:hoigg/constants/routers.dart';
import 'package:hoigg/constants/theme.dart';
import 'package:hoigg/translations/translations.dart';
import 'package:hoigg/utils/global_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GlobalBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(),
      // initialRoute: kAuthenticate,
      initialRoute: kWelcome,
      debugShowCheckedModeBanner: false,
      getPages: pages,
      builder: EasyLoading.init(),
      translations: MyTranslations(),
      locale: const Locale('vi', 'VN'),
    );
  }
}
