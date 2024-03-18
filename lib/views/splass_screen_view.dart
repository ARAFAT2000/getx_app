import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/res/components/general_exception.dart';
import 'package:getx_app/res/components/internet_exception_widget.dart';
import 'package:getx_app/res/components/round_button.dart';

import '../data/app-exception.dart';
import '../view_model/services/splass_services.dart';


class SplassScreen extends StatefulWidget {
  const SplassScreen({super.key});

  @override
  State<SplassScreen> createState() => _SplassScreenState();
}

class _SplassScreenState extends State<SplassScreen> {
  SplassServices splassServices= SplassServices();
  @override
  void initState() {
    splassServices.isLogIn();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
   backgroundColor: Colors.teal,
      body:Center(
        child: Text('Welcome_back'.tr,
          style: TextStyle(
          color: Colors.white,fontSize: 16
        ),),
      )
    );
  }
}
