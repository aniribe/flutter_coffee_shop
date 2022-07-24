import 'package:coffee_shop/config/app.locator.dart';
import 'package:coffee_shop/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'config/app.router.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      home: const HomeView(),
    );
  }
}
