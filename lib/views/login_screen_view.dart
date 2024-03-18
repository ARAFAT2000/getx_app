import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/res/components/round_button.dart';
import 'package:getx_app/utils/utils.dart';

import '../view_model/controller/login/login_view_controller.dart';


class LogInScreenView extends StatefulWidget {
  const LogInScreenView({super.key});

  @override
  State<LogInScreenView> createState() => _LogInScreenViewState();
}

class _LogInScreenViewState extends State<LogInScreenView> {

  final LoginViewController loginViewController=Get.put(LoginViewController());
  final _keyform= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('log_in'.tr),
      ),
   body: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 30),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
        Form(
          key: _keyform,
            child:
          Column(
          children: [
            //
            TextFormField(
              controller: loginViewController.emailController.value,
              focusNode: loginViewController.emailFocusedNode.value,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'email_hint'.tr
              ),
              validator: (value){
                if(value!.isEmpty){
                  Utils.snacBarMessege('Email', 'Please Enter Your Email');
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(

              controller: loginViewController.passwordController.value,
              focusNode: loginViewController.passwordFocusedNode.value,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'password_hint'.tr
              ),
              obscureText: true,

              validator: (value){
                if(value!.isEmpty){
                  Utils.snacBarMessege('Password', 'Please Enter Your Password');
                }
              },
              onChanged: (value){

              },
            ),
          ],
        )),
         SizedBox(
           height: 30,),
        //return type Obx
         //Obx krlam tai,,,loading hochhe
        Obx(() =>
            RoundButton(
                weight: 200,
                loading: loginViewController.loading.value,
                title: 'log_in'.tr,
                onPress: (){
              if(_keyform.currentState!.validate()){
                loginViewController.logInApi();

              }
            })
        )
       ],
     ),
   ),
    );
  }
  @override
  void dispose() {
    loginViewController.emailController.close();
    loginViewController.passwordController.close();
    // TODO: implement dispose
    super.dispose();
  }
}
