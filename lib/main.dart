import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/repository/news_repository/news_repository.dart';
import 'package:news_app/res/routes/routes_name.dart';
import 'package:news_app/view/home/home_screen.dart';
import 'package:news_app/view/splash_screen.dart';

import 'model/news_channel_headline_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        ...AppRoutes.appRoutes(),
        GetPage<dynamic>(name: '/HomeScreen', page: () => HomeScreen()),
      ],
      home: const SplashScreen(),
    );
  }
}
