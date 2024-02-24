import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:plant_shop_app/routes/app_pages.dart';
import 'package:plant_shop_app/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Application',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: AppPages.routes,
      builder: (context, child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: child,
        );
      },
      navigatorObservers: [
        BotToastNavigatorObserver(),
      ],
    );
  }
}
