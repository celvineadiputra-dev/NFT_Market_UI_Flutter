import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nft_market/widgets/SplashWidget.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 3),
        ),
        builder: (context, snapshot) {
          // return GetMaterialApp(
          //   debugShowCheckedModeBanner: false,
          //   title: "Application",
          //   initialRoute: Routes.DETAIL_SCREEN,
          //   getPages: AppPages.routes,
          // );
          if(snapshot.connectionState == ConnectionState.waiting){
            return const SplashScreen();
          }
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: Routes.ON_BOARDING_SCREEN,
            getPages: AppPages.routes,
          );
        });
  }
}
