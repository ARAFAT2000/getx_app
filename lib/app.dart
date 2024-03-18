import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:getx_app/res/getx_localization/getx_localization.dart';
import 'package:getx_app/res/routes/routes.dart';
import 'package:getx_app/views/splass_screen_view.dart';
import 'package:get/get.dart';





class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Approutes.approutes(),
      debugShowCheckedModeBanner: false,
       translations: LanguageLocalization(),
      locale:Locale('en', 'US'),
      fallbackLocale: Locale('bn', 'BD'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home:SplassScreen(),
    );
  }
}