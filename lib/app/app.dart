import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_binding.dart';
import 'config/constants.dart';
import 'config/env.dart';
import 'config/theme.dart';
import 'routes/app_pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Env.title,
      navigatorKey: GlobalKeys.navigationKey,
      debugShowCheckedModeBanner: false,
      theme: Themes.theme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.fade,
      initialBinding: AppBinding(),
    );
  }
}
