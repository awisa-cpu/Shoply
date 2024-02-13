import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/features/authentication/views/sign_in/sign_in_view.dart';
import 'package:shoply/utilities/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoply',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const SignInView(),
    );
  }
}
